//
// Created by keionbis on 1/18/18.
//

#include "AS5055.h"

unsigned int result = 0;
unsigned int result1 = 0;
unsigned int result2 = 0;

 AS5055::AS5055(){
    Serial.begin(9600);
    SPI.begin();
    SPI.setBitOrder(MSBFIRST);
    SPI.setClockDivider(SPI_CLOCK_DIV64); //you can chose faster SPI frequency
}

int AS5055::Read (int SS) {
    digitalWrite(SS, LOW);
    result1 = SPI.transfer(0xff);
    result2 = SPI.transfer(0xff);
    digitalWrite(SS, HIGH);
    result1 &= 0b00111111;
    result1 = result1 << 8;
    result = (result1 | result2) >> 1; //adjusts by one bit for more resolution
    //Serial.print("Result: ");
    //Serial.print(" = ");
    //Serial.println(result, DEC);
    //delay(100);
    return result;
}