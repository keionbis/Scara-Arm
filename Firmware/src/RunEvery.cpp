//
// Created by keionbis on 1/18/18.
//

#include <IntervalTimer.h>
#include "RunEvery.h"
IntervalTimer Timers[20];
RunEvery::RunEvery(void (*funct)(),int CycleTime){
    TimerCount++;
    Timers[TimerCount].begin(*funct, CycleTime);
}
