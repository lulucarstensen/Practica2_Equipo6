/*
 * accel.c
 *
 *  Created on: 22 nov. 2023
 *      Author: Alexis
 */
/*
 * Copyright (c) 2015, Freescale Semiconductor, Inc.
 * Copyright 2016-2017 NXP
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "accel.h"
/*******************************************************************************
 * Definitions
 ******************************************************************************/


/*******************************************************************************
 * Prototypes
 ******************************************************************************/
void BOARD_I2C_ReleaseBus(void);

/*******************************************************************************
 * Variables
 ******************************************************************************/
i2c_master_handle_t g_MasterHandle;
/* FXOS device address */
const uint8_t g_accel_address[] = {0x1CU, 0x1DU, 0x1EU, 0x1FU};
static uint8_t dataScale = 0;
static fxos_handle_t fxosHandle;
static fxos_data_t sensorData;
static int16_t xData, yData,zData;
static int16_t xAngle, yAngle,zAngle;

/*******************************************************************************
 * Code
 ******************************************************************************/

static void i2c_release_bus_delay(void)
{
    uint32_t i = 0;
    for (i = 0; i < I2C_RELEASE_BUS_COUNT; i++)
    {
        __NOP();
    }
}

void BOARD_I2C_ReleaseBus(void)
{
    uint8_t i = 0;
    gpio_pin_config_t pin_config;
    port_pin_config_t i2c_pin_config = {0};

    /* Config pin mux as gpio */
    i2c_pin_config.pullSelect = kPORT_PullUp;
    i2c_pin_config.mux = kPORT_MuxAsGpio;

    pin_config.pinDirection = kGPIO_DigitalOutput;
    pin_config.outputLogic = 1U;
    CLOCK_EnableClock(kCLOCK_PortC);
    PORT_SetPinConfig(I2C_RELEASE_SCL_PORT, I2C_RELEASE_SCL_PIN, &i2c_pin_config);
    PORT_SetPinConfig(I2C_RELEASE_SDA_PORT, I2C_RELEASE_SDA_PIN, &i2c_pin_config);

    GPIO_PinInit(I2C_RELEASE_SCL_GPIO, I2C_RELEASE_SCL_PIN, &pin_config);
    GPIO_PinInit(I2C_RELEASE_SDA_GPIO, I2C_RELEASE_SDA_PIN, &pin_config);

    /* Drive SDA low first to simulate a start */
    GPIO_WritePinOutput(I2C_RELEASE_SDA_GPIO, I2C_RELEASE_SDA_PIN, 0U);
    i2c_release_bus_delay();

    /* Send 9 pulses on SCL and keep SDA high */
    for (i = 0; i < 9; i++)
    {
        GPIO_WritePinOutput(I2C_RELEASE_SCL_GPIO, I2C_RELEASE_SCL_PIN, 0U);
        i2c_release_bus_delay();

        GPIO_WritePinOutput(I2C_RELEASE_SDA_GPIO, I2C_RELEASE_SDA_PIN, 1U);
        i2c_release_bus_delay();

        GPIO_WritePinOutput(I2C_RELEASE_SCL_GPIO, I2C_RELEASE_SCL_PIN, 1U);
        i2c_release_bus_delay();
        i2c_release_bus_delay();
    }

    /* Send stop */
    GPIO_WritePinOutput(I2C_RELEASE_SCL_GPIO, I2C_RELEASE_SCL_PIN, 0U);
    i2c_release_bus_delay();

    GPIO_WritePinOutput(I2C_RELEASE_SDA_GPIO, I2C_RELEASE_SDA_PIN, 0U);
    i2c_release_bus_delay();

    GPIO_WritePinOutput(I2C_RELEASE_SCL_GPIO, I2C_RELEASE_SCL_PIN, 1U);
    i2c_release_bus_delay();

    GPIO_WritePinOutput(I2C_RELEASE_SDA_GPIO, I2C_RELEASE_SDA_PIN, 1U);
    i2c_release_bus_delay();
}
/* Initialize timer module */
static void Timer_Init(void)
{
    /* convert to match type of data */
    tpm_config_t tpmInfo;
    tpm_chnl_pwm_signal_param_t tpmParam[2];

    /* Configure tpm params with frequency 24kHZ */
    tpmParam[0].chnlNumber = (tpm_chnl_t)BOARD_FIRST_TIMER_CHANNEL;
    tpmParam[0].level = kTPM_LowTrue;
    tpmParam[0].dutyCyclePercent = 0U;

    tpmParam[1].chnlNumber = (tpm_chnl_t)BOARD_SECOND_TIMER_CHANNEL;
    tpmParam[1].level = kTPM_LowTrue;
    tpmParam[1].dutyCyclePercent = 0U;

    /* Initialize TPM module */
    TPM_GetDefaultConfig(&tpmInfo);
    TPM_Init(BOARD_TIMER_BASEADDR, &tpmInfo);

    CLOCK_SetTpmClock(TIMER_CLOCK_MODE);

    TPM_SetupPwm(BOARD_TIMER_BASEADDR, tpmParam, 2U, kTPM_EdgeAlignedPwm, 24000U, BOARD_TIMER_SOURCE_CLOCK);
    TPM_StartTimer(BOARD_TIMER_BASEADDR, kTPM_SystemClock);
}

/* Update the duty cycle of an active pwm signal */
static void Board_UpdatePwm(uint16_t x, uint16_t y)
{
    /* Updated duty cycle */
    TPM_UpdatePwmDutycycle(BOARD_TIMER_BASEADDR, (tpm_chnl_t)BOARD_FIRST_TIMER_CHANNEL, kTPM_EdgeAlignedPwm, x);
    TPM_UpdatePwmDutycycle(BOARD_TIMER_BASEADDR, (tpm_chnl_t)BOARD_SECOND_TIMER_CHANNEL, kTPM_EdgeAlignedPwm, y);
}

void initAccel()
{

	i2c_master_handle_t MasterHandle;
	i2c_master_config_t i2cConfig;
	uint32_t i2cSourceClock;
	uint8_t acclIndex = 0;
	uint8_t regResult = 0;
	uint8_t array_addr_size = 0;
	bool foundDevice = false;
	uint8_t sensorRange = 0;
	uint8_t i = 0;
	BOARD_InitPins();
	BOARD_BootClockRUN();
	BOARD_I2C_ReleaseBus();
	BOARD_I2C_ConfigurePins();

	i2cSourceClock = CLOCK_GetFreq(I2C1_CLK_SRC);
	fxosHandle.base = I2C1;
	fxosHandle.i2cHandle = &g_MasterHandle;

	I2C_MasterGetDefaultConfig(&i2cConfig);
	I2C_MasterInit(I2C1, &i2cConfig, i2cSourceClock);
	I2C_MasterTransferCreateHandle(I2C1, &MasterHandle, NULL, NULL);

	/* Find sensor devices */
	array_addr_size = sizeof(g_accel_address) / sizeof(g_accel_address[0]);
	for (i = 0; i < array_addr_size; i++)
	{
		fxosHandle.xfer.slaveAddress = g_accel_address[i];
		if (FXOS_ReadReg(&fxosHandle, WHO_AM_I_REG, &regResult, 1) == kStatus_Success)
		{
			foundDevice = true;
			break;
		}
		if ((i == (array_addr_size - 1)) && (!foundDevice))
		{

			while (1)
			{
			};
		}
	}

	/* Init accelerometer sensor */
	if (FXOS_Init(&fxosHandle) != kStatus_Success)
	{
		return -1;
	}
	/* Get sensor range */
	if (FXOS_ReadReg(&fxosHandle, XYZ_DATA_CFG_REG, &sensorRange, 1) != kStatus_Success)
	{
		return -1;
	}
	if (sensorRange == 0x00)
	{
		dataScale = 2U;
	}
	else if (sensorRange == 0x01)
	{
		dataScale = 4U;
	}
	else if (sensorRange == 0x10)
	{
		dataScale = 8U;
	}
	else
	{
	}
	while (FXOS_Init(&fxosHandle) != kStatus_Success) { };
}


uint16_t getMeasureX(void)
{
	/* Get new accelerometer data. */
	if (FXOS_ReadSensorData(&fxosHandle, &sensorData) != kStatus_Success)
	{
		return -1;
	}

	/* Get the X and Y data from the sensor data structure in 14 bit left format data*/
	xData = (int16_t)((uint16_t)((uint16_t)sensorData.accelXMSB << 8) | (uint16_t)sensorData.accelXLSB) / 4U;
	/* Convert raw data to angle (normalize to 0-90 degrees). No negative angles. */
	xAngle = (int16_t)floor((double)xData * (double)dataScale * 90 / 8192);
	if (xAngle < 0)
	{
		xAngle *= -1;
	}
	Board_UpdatePwm( xAngle,  yAngle);
	return xAngle;
}

uint16_t getMeasureY(void)
{
	/* Get new accelerometer data. */
	if (FXOS_ReadSensorData(&fxosHandle, &sensorData) != kStatus_Success)
	{
		return -1;
	}

	/* Get the X and Y data from the sensor data structure in 14 bit left format data*/
	yData = (int16_t)((uint16_t)((uint16_t)sensorData.accelYMSB << 8) | (uint16_t)sensorData.accelYLSB) / 4U;
	/* Convert raw data to angle (normalize to 0-90 degrees). No negative angles. */
	yAngle = (int16_t)floor((double)yData * (double)dataScale * 90 / 8192);
	if (yAngle < 0)
	{
		yAngle *= -1;
	}
	Board_UpdatePwm( xAngle,  yAngle);

	return yAngle;
}

uint16_t getMeasureZ(void)
{
	/* Get new accelerometer data. */
	if (FXOS_ReadSensorData(&fxosHandle, &sensorData) != kStatus_Success)
	{
		return -1;
	}

	/* Get the X and Y data from the sensor data structure in 14 bit left format data*/
	zData = (int16_t)((uint16_t)((uint16_t)sensorData.accelZMSB << 8) | (uint16_t)sensorData.accelZLSB) / 4U;
	/* Convert raw data to angle (normalize to 0-90 degrees). No negative angles. */
	zAngle = (int16_t)floor((double)zData * (double)dataScale * 90 / 8192);
	if (xAngle < 0)
	{
		xAngle *= -1;
	}
	Board_UpdatePwm( xAngle,  yAngle);

	return zAngle;
}

