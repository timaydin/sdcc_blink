#include "numicro_8051.h"

void main(void)
{
    unsigned long i;

    P1M1 = 0x00;
    P1M2 = 0xFF;

    while (1)
    {
        P1 = 0xFF;
        for (i = 0; i < 200000; ++i)
        {
            ;
        }

        P1 = 0x00;
        for (i = 0; i < 200000; ++i)
        {
            ;
        }
    }
}
