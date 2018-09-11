namespace e2v {

const unsigned char phases[8] = {
    0b0001,
    0b0101,
    0b0100,
    0b0110,
    0b0010,
    0b1010,
    0b1000,
    0b1001
};

class Driver {

    volatile target::gpio_a::Peripheral* port;
    int pins[4];
    volatile target::tim_16_17::Peripheral* timer;

    int counter;
    int stop = 4;

public:
    void init(
        volatile target::gpio_a::Peripheral* port,
        int pinA1,
        int pinA2,
        int pinB1,
        int pinB2,
        int pinNSleep,
        volatile target::tim_16_17::Peripheral* timer
    ) {
        this->port = port;
        this->pins[0] = pinA1;
        this->pins[1] = pinA2;
        this->pins[2] = pinB1;
        this->pins[3] = pinB2;
        this->timer = timer;

        for (int p = 0; p < 4; p++) {
            port->MODER.setMODER(pins[p], 1);
        }

        port->MODER.setMODER(pinNSleep, 1);
        port->ODR.setODR(pinNSleep, 1);
      
        timer->DIER.setUIE(1);
        timer->ARR.setARR(0xFFFF);
        timer->PSC.setPSC(50);
        timer->CR1.setCEN(1);
    }


    void handleInterrupt() {
        timer->SR.setUIF(0);

        int sr[2] = {0, 0};
        for (int p = 0; p < 4; p++) {
            sr[(phases[counter & 7] >> p) & 1] |= 1 << pins[p];
        }
        port->BSRR = sr[1] | sr[0] << 16;

        if (counter < stop) {
            counter++;
        } else if (counter > stop) {
            counter--;
        }
    }

};

}