################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ant_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ble_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_common_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p3_h_0p5_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p32_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p5_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p7_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_1p0_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p7_h_0p5_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_mode_datarate_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_msk_config.c \
../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_zgbe_config.c 

C_DEPS += \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ant_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ble_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_common_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p3_h_0p5_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p32_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p5_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p7_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_1p0_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p7_h_0p5_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_mode_datarate_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_msk_config.d \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_zgbe_config.d 

OBJS += \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ant_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ble_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_common_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p3_h_0p5_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p32_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p5_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p7_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_1p0_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p7_h_0p5_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_mode_datarate_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_msk_config.o \
./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_zgbe_config.o 


# Each subdirectory must supply rules for building sources it contributes
framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/%.o: ../framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/%.c framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -D__SEMIHOST_HARDFAULT_DISABLE=1 -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\board" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\source" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\CMSIS" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\OSAbstraction\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\freertos" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\ieee_802.15.4\mac\source\App" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\ieee_802.15.4\mac\interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\ieee_802.15.4\phy\interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\GPIO" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Keyboard\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\LED\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\SerialManager\Source\SPI_Adapter" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\SerialManager\Source\UART_Adapter" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\SerialManager\Source\I2C_Adapter" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Flash\Internal" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\common" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\MemManager\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Messaging\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Panic\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\RNG\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\SerialManager\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\TimersManager\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\TimersManager\Source" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\SecLib" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Lists" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\FunctionLib" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\ModuleInfo" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\MWSCoexistence\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\Shell\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\NVM\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\NVM\Source" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\FSCI\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\FSCI\Source" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\LowPower\Interface\MKW41Z" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\LowPower\Source\MKW41Z" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\core\interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\core\interface\modules" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\core\interface\thread" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\base\interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\core\interface\http" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\app\config" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\nwk_ip\app\common" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\drivers" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\DCDC\Interface" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\framework\XCVR\MKW41Z4" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\ieee_802.15.4\phy\source\MKW41Z" -I"C:\Users\Alexis\Documents\MCUXpressoIDE_11.8.0_1165\GIT\Practica2_Equipo6\utilities" -Og -fno-common -g -Wall -Wno-missing-braces  -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "C:/Users/Alexis/Documents/MCUXpressoIDE_11.8.0_1165/GIT/Practica2_Equipo6/source/config.h" -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-framework-2f-XCVR-2f-MKW41Z4-2f-cfgs_kw4x_3x_2x

clean-framework-2f-XCVR-2f-MKW41Z4-2f-cfgs_kw4x_3x_2x:
	-$(RM) ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ant_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ant_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ble_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_ble_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_common_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_common_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p3_h_0p5_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p3_h_0p5_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p32_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p32_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p5_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p5_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p7_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_0p7_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_1p0_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p5_h_1p0_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p7_h_0p5_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_gfsk_bt_0p7_h_0p5_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_mode_datarate_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_mode_datarate_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_msk_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_msk_config.o ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_zgbe_config.d ./framework/XCVR/MKW41Z4/cfgs_kw4x_3x_2x/fsl_xcvr_zgbe_config.o

.PHONY: clean-framework-2f-XCVR-2f-MKW41Z4-2f-cfgs_kw4x_3x_2x

