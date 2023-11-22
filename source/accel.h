/*
 * accel.h
 *
 *  Created on: 22 nov. 2023
 *      Author: Alexis
 */

#ifndef ACCEL_H_
#define ACCEL_H_

#include "fsl_debug_console.h"
#include "board.h"
#include "math.h"
#include "fsl_fxos.h"
#include "fsl_i2c.h"
#include "fsl_tpm.h"

#include "clock_config.h"
#include "pin_mux.h"
#include "fsl_gpio.h"
#include "fsl_port.h"

/* The TPM instance/channel used for board */
#define BOARD_TIMER_BASEADDR TPM2
#define BOARD_FIRST_TIMER_CHANNEL 0U
#define BOARD_SECOND_TIMER_CHANNEL 1U
/* Get source clock for TPM driver */
#define BOARD_TIMER_SOURCE_CLOCK CLOCK_GetFreq(kCLOCK_Osc0ErClk)
#define TIMER_CLOCK_MODE 1U
/* I2C source clock */
#define ACCEL_I2C_CLK_SRC I2C1_CLK_SRC
#define I2C_BAUDRATE 100000U

#define I2C_RELEASE_SDA_PORT PORTC
#define I2C_RELEASE_SCL_PORT PORTC
#define I2C_RELEASE_SDA_GPIO GPIOC
#define I2C_RELEASE_SDA_PIN 3U
#define I2C_RELEASE_SCL_GPIO GPIOC
#define I2C_RELEASE_SCL_PIN 2U
#define I2C_RELEASE_BUS_COUNT 100U
/* Upper bound and lower bound angle values */
#define ANGLE_UPPER_BOUND 85U
#define ANGLE_LOWER_BOUND 5U

void initAccel();

uint16_t getMeasureX(void);
uint16_t getMeasureY(void);
uint16_t getMeasureZ(void);

#endif /* ACCEL_H_ */
