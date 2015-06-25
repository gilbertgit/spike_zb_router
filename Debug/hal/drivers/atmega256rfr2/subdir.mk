################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../hal/drivers/atmega256rfr2/halSleep.c \
../hal/drivers/atmega256rfr2/halUart.c 

OBJS += \
./hal/drivers/atmega256rfr2/halSleep.o \
./hal/drivers/atmega256rfr2/halUart.o 

C_DEPS += \
./hal/drivers/atmega256rfr2/halSleep.d \
./hal/drivers/atmega256rfr2/halUart.d 


# Each subdirectory must supply rules for building sources it contributes
hal/drivers/atmega256rfr2/%.o: ../hal/drivers/atmega256rfr2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"/Users/titan/Documents/Dev/git/spike_zb_router" -I"/Users/titan/Documents/Dev/git/spike_zb_router/hal/atmega256rfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_router/hal/drivers/atmega256rfr2" -I"/Users/titan/Documents/Dev/git/spike_zb_router/nwk/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_router/phy/atmegarfr2/inc" -I"/Users/titan/Documents/Dev/git/spike_zb_router/sys/inc" -DPHY_ATMEGARFR2 -DHAL_ATMEGA256RFR2 -DPLATFORM_BITSTORM_ZB_B -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega256rfr2 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


