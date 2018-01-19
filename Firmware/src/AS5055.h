//
// Created by keionbis on 1/18/18.
//

#ifndef FIRMWARE_AS5055_H
#define FIRMWARE_AS5055_H
#include <SPI.h>

class AS5055 {
public:
    AS5055();
    int Read(int SS);
};


#endif //FIRMWARE_AS5055_H
