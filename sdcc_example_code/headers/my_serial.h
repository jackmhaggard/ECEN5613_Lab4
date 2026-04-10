/*
 * Authour Nalin Saxena
 * ECEN 5613 - Fall 2024 - Prof. McClure
 * University of Colorado Boulder
 * Revised 10/25/24
 *  --------------------------------------------------------------------------------
 * This file contains function declaration related to Serial I/O function
 * including putchar getchar and a simple uart_out to print coloured strings
   ---------------------------------------------------------------------------------*/
#ifndef SERIAL_IO_H_
#define SERIAL_IO_H_

#include <mcs51/8051.h>
#include <at89c51ed2.h>


/* Transmit a character on the serial port
 * Parameters:
 *          int c: character value
 *
 * Returns:
 * 			int 
 */
int putchar(int c);

/* Receive  a character on the serial port
 * Parameters:
 *          void 
 *
 * Returns:
 * 			int character from user
 */
int getchar(void);
#endif // SERIAL_IO_H_
