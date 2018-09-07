const int VALUE_UNKNOWN = -1;

enum Command {
	CMD_NONE,
	CMD_I2C_SET_RGB_LED
};

class GWHP: public i2c::hw::BufferedSlave {

	struct {
		unsigned char command;
		union {
			rgbLed::Setting rgbLed;
		};
	} i2cRxBuffer;

public:

	rgbLed::Driver rgbLed;

	void init(int i2cAddress) {

		// RGB LED
		rgbLed.init(&target::GPIOB, 3, 1, 0, &target::TIM16);

		// I2C
		target::GPIOA.AFRH.setAFRH(9, 4);
		target::GPIOA.AFRH.setAFRH(10, 4);
		target::GPIOA.MODER.setMODER(9, 2);
		target::GPIOA.MODER.setMODER(10, 2);
		BufferedSlave::init(&target::I2C1, i2cAddress, (unsigned char*)&i2cRxBuffer, sizeof(i2cRxBuffer), NULL, 0);
	}

	virtual void onStop(bool read) {
		if (!read) {
			Command command = (Command) i2cRxBuffer.command;
			i2cRxBuffer.command = CMD_NONE;
			switch (command) {
				case CMD_I2C_SET_RGB_LED: {
					rgbLed.set(&i2cRxBuffer.rgbLed);
					break;
				}
			}
		}
	}

};

GWHP gwhp;

void interruptHandlerI2C1() {
	gwhp.handleInterrupt();
}

void interruptHandlerTIM16() {
	gwhp.rgbLed.handleInterrupt();
}

void initApplication() {

	// enable ports A, B, F
	target::RCC.AHBENR.setIOPAEN(true);
	target::RCC.AHBENR.setIOPBEN(true);
	target::RCC.AHBENR.setIOPFEN(true);
	// enable I2C1
	target::RCC.APB1ENR.setC_EN(1, 1);

	target::RCC.APB2ENR.setTIM16EN(1);

	target::NVIC.ISER.setSETENA(1 << target::interrupts::External::I2C1);
	target::NVIC.ISER.setSETENA(1 << target::interrupts::External::TIM16);

	gwhp.init(0x73);	
}