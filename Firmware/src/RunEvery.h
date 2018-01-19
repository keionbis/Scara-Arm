//
// Created by keionbis on 1/18/18.
//

#ifndef FIRMWARE_RUNEVERY_H
#define FIRMWARE_RUNEVERY_H


class RunEvery {
public:
    RunEvery(void (*funct)(),int CycleTime);
    int TimerCount;
};


#endif //FIRMWARE_RUNEVERY_H
