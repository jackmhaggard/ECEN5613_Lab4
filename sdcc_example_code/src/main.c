/*
 * Author Nalin Saxena
 * ECEN 5613 - Fall 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *
 * Necessary preconditions-
 * 1. Paulmon should be running first to make use of this code (Serial peripheral initialization is handled via paulmon2).
 * 2. Necessary hardware changes have to be made to use SRAM as external data storage device.
 *
 * Building and flashing instructions-
 *
 * 1. Simply run "make" on your cli and use flip to flash the resulting output.hex file on your board
 * 2. Use Paulmon2 to jump to location 2000
 *
 * The following test program/starter code introduces many important concepts with the SDCC compiler
 * We begin by testing our heap memory and malloc configuration, by allocating a fixed number
 * of elements (COUNT_ELEMENTS_MALLOC) and storing ascii character starting from 'a' and we echo it
 * back over serial.
 *
 * Error message is printed if malloc operation fails and the code flow jumps to the
 * timer isr test.
 *
 * For the timer ISR test section of this code, we utilize TIMER0 in Mode 1 and we generate a
 * base timer interrupt of approximately 50000μs. It is a good practice to keep ISR functions short and
 * hence this ISR just signals required operation to be done via global flags.The main function actually does the
 * job of "acting" on those flags if required.
 *
 * SDCC User Manual - https://sdcc.sourceforge.net/doc/sdccman.pdf
 * A guide to make files- https://www.youtube.com/watch?v=_r7i5X0rXJk&t=226s
 *
 * SDCC version - 4.2.0
 * make version- GNU Make version 3.77
   ---------------------------------------------------------------------------------*/

#include "my_serial.h"
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdbool.h>
/*
[Important Note] if you have made this change via paulmon2 you can comment this section

setting all 1024 of internal xram
*/
int _sdcc_external_startup()
{
    AUXR |= 0X0C;
    return 0;
}

#define COUNT_ELEMENTS_MALLOC 10 // number of elements we wish to allocate via malloc
#define TMOD_MODE1_POS  0        // bit position for timer0 mode 1
#define REQ_OVERFLOWS 10         // The base period of ISR is 50000us and hence to get to 500ms we need 10 overflows

/*
variables modified inside ISR must be declared as volatile
*/
volatile int current_overflow_count;
volatile int reload_counter;

void init_timer_registers()
{
    TMOD |= 1 << TMOD_MODE1_POS;
    // to generate an overflow every 500us
    TH0 = 0x4C;
    TL0 = 0x0D;
    ET0 = 1; // enable timer0 interrupt
    EA = 1;  // enable global interrupt
}
/*
refer to section 3.8 Interrupt Service Routines in SDCC user manual
All isr number/address can be found in this file-
C:\Program Files\SDCC\include\mcs51\8051.h
*/
void timer0_ISR(void) __interrupt(TF0_VECTOR)
{
    current_overflow_count++; // increment the overflow count
    reload_counter = true;    // since interrupt has elapsed we need to reload our couner
}

void main()
{
    printf_tiny("Performing a simple test for malloc \n \r");

    // initialize global variables
    current_overflow_count = 0;
    reload_counter = false;

    char *char_buff;
    // malloc returns a void pointer, and we need to typecast it before using
    char_buff = (char *)malloc(COUNT_ELEMENTS_MALLOC * sizeof(char));
    /*
    if the returned pointer is NULL malloc has failed and we cannot continue with malloc test
    we directly jump to TIMER_ISR_TEST  label
     */
    if (char_buff == NULL)
    {
        // most modern terminals support colors
        // https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
        printf_tiny("\033[31mMalloc operation failed! :( jumping to TIMER_ISR_TEST  \n\r\033[0m");
        // in case of error jump to label
        goto TIMER_ISR_TEST;
    }
    // store ascii characters in the dynamic array
    for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
    {
        char_buff[i] = 'a' + i;
    }
    // echo the characters out over serial
    for (int i = 0; i < COUNT_ELEMENTS_MALLOC; i++)
    {
        if (char_buff[i] != ('a' + i))
        {
            printf_tiny("\033[31mExpectedValue mismatch! \n\r\033[0m");
        }
        putchar(char_buff[i]);
    }
    printf_tiny("\n\r");
    printf_tiny("\033[32mMalloc Test operation was successful \n\r\033[0m");
    // we can now use the free api to give back the dynamic memory
    free(char_buff);

TIMER_ISR_TEST:
    init_timer_registers();
    TR0 = 1; // Start Timer0
    while (1)
    {
        // reload the counters if we get an indication from the ISR
        if (reload_counter == true)
            __critical
            {
                TH0 = 0x4C;
                TL0 = 0x0D;
                reload_counter = false;
            }
        // if the current_overflow_count reaches the target value, we toggle our port pin and reset the flag
        if (current_overflow_count == REQ_OVERFLOWS)
            __critical
            {
                P1_1 = !P1_1;               // change this to your led pin
                current_overflow_count = 0; // clear for next iteration
            }
    }
}