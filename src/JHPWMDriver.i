%module JHPWMDriver
%{
#include "JHPWMPCA9685.h"
%}

class PCA9685
{
public:
    PCA9685(int address=0x40);
    bool openPCA9685() ;
    void closePCA9685();
    void reset() ;
    void setPWMFrequency ( float frequency );
    void setPWM ( int channel, int onValue, int offValue);
    void setAllPWM (int onValue, int offValue);
    int getError() ;
};

