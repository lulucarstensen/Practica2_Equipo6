################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../nwk_ip/base/thread_config/thread_config.c 

OBJS += \
./nwk_ip/base/thread_config/thread_config.o 

C_DEPS += \
./nwk_ip/base/thread_config/thread_config.d 


# Each subdirectory must supply rules for building sources it contributes
nwk_ip/base/thread_config/%.o: ../nwk_ip/base/thread_config/%.c nwk_ip/base/thread_config/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -D__REDLIB__ -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -D__SEMIHOST_HARDFAULT_DISABLE=1 -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -DSDK_DEBUGCONSOLE=1 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/board" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/source" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/CMSIS" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/OSAbstraction/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/freertos" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/ieee_802.15.4/mac/source/App" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/ieee_802.15.4/mac/interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/ieee_802.15.4/phy/interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/GPIO" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Keyboard/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/LED/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/SerialManager/Source/SPI_Adapter" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/SerialManager/Source/UART_Adapter" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/SerialManager/Source/I2C_Adapter" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Flash/Internal" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/common" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/MemManager/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Messaging/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Panic/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/RNG/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/SerialManager/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/TimersManager/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/TimersManager/Source" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/SecLib" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Lists" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/FunctionLib" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/ModuleInfo" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/MWSCoexistence/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/Shell/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/NVM/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/NVM/Source" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/FSCI/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/FSCI/Source" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/LowPower/Interface/MKW41Z" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/LowPower/Source/MKW41Z" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/core/interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/core/interface/modules" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/core/interface/thread" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/base/interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/core/interface/http" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/app/config" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/nwk_ip/app/common" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/drivers" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/DCDC/Interface" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/framework/XCVR/MKW41Z4" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/ieee_802.15.4/phy/source/MKW41Z" -I"/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/utilities" -Og -fno-common -g -Wall -Wno-missing-braces  -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "/Users/carstensen/Desktop/ITESO/RSE2/Inalambric/P2_thr_frdmkw41z_wireless_examples_thread_router_eligible_device_freertos/source/config.h" -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


