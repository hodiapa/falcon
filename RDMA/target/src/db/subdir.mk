# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/db/db-interface.c 

OBJS += \
./src/db/db-interface.o 


# Each subdirectory must supply rules for building sources it contributes
src/db/%.o: ../src/db/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc-4.8 -fPIC -rdynamic -std=gnu11 -DDEBUG=$(DEBUGOPT) -I"$(ROOT_DIR)/../.local/include" -O0 -g3 -Wall -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


