/*
 * Authour Nalin Saxena
 * ECEN 5613 - Fall 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 21/2/26
 *  --------------------------------------------------------------------------------
 * This file contains function implementation related to Serial I/O function
 * including putchar getchar and a simple uart_out to print coloured strings
   ---------------------------------------------------------------------------------*/
#include "my_serial.h"

int putchar(int c)
{
    while (!TI)
        ;     // wait for TI to get set previous transmission completed
    TI = 0;   // clear TI flag
    SBUF = c; // load serial port with transmit value
    return c;
}

int getchar(void)
{

    while (!RI)
        ;        // wait for RI to get set data is received
    RI = 0;      // clear RI flag
    return SBUF; // return character from SBUF
}


int getcharmain(void){
    if(RI){
        RI = 0;
        return SBUF;
    }
    else{
        return 1;
    }
}