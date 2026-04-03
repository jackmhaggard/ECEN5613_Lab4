/*
 * Author Jack Haggard
 * ECEN 5613 - Fall 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 3/2/26
 *  --------------------------------------------------------------------------------
 *
 * Necessary preconditions-
 * 1. Paulmon should be running first to make use of this code (Serial peripheral initialization is handled via paulmon2).
 * 2. Necessary hardware changes have to be made to use SRAM as external data storage device.
 *
 * Building and flashing instructions-
 *
 * 1. In the command line run "make flash" to compile this program and flash it to the board through the use of batchisp.
 * 2. Use Paulmon2 to jump to location 2000
 * 
 * Functionality:
 * The user is prompted to input the last 2 digits of their student ID in addition to providing a valid buffer size between 64-1024 bytes that is divisible
 * by 32. After that the user is able to through the use of special keyboard inputs fill up various buffers with characters.
 * 
 * ? displays the contents of buffers 0 and 1 and then empties them. It also provides useful statistics about each of the buffers
 * = prints the contents of buffers 0 and 1 in hex format
 * % empties all of the buffers
 * @ restarts the program
 * $ copies the contents of buffer 0 into buffer 3
 * # converts any uppercase letter in buffer 3 into lowercase
 *
 * SDCC version - 4.2.0
 * make version- GNU Make version 3.77
   ---------------------------------------------------------------------------------*/

#include "my_serial.h"
#include "main.h"
#include "i2c.h"
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdbool.h>


void main(){
    //initialize i2c?
    i2cSetPort();
    //i2csetAdd(0xA0);
    i2cBegin(11059200, 1);

    i2csetAdd(0xA0);
    printf("\n\r Lab4 Part 1 EEPROM Program\n\r");

    while(1){
        
        
        Program();
    }

}

int Input(){
    char temp[6];
    char c;
    int i = 0;
    while(1){
        c = getchar();
        if(c == '\r'){
            break;
        }
        if(i < sizeof(temp)-1){
            temp[i] = c;
            i++;

        }
        putchar(c);
    }
    temp[i] = '\0';
    printf("\n\r");
    return atoi(temp);
}
void Program()
{
    char c;

    while(1)
    {
        printf("\n\r ------ Commands ------\n\r");
        printf("\n\r W : Write Byte\n\r");
        printf("\n\r R : Read Byte\n\r");
        printf("\n\r H : Hex Dump\n\r");
        printf("\n\r e : Reset EEPROM\n\r");
        c = getchar();
        putchar(c);
        if(c == 'w')
        {
            printf("\n\r Writing a Byte\n\r");
            printf("\n\r Page: ");
            
            int page = Input();
            printf("\n\r Address: ");
            
            int address = Input();

            printf("\n\r Data: ");

            int data = Input();
            //put write funciton call here
            int temp = 0xA0;
            temp = temp | (page << 1);
            temp = temp & 0xFE;
            i2csetAdd(temp);
            i2cWrite(data, address);
        }

        else if(c == 'r'){
            printf("\n\r Reading a Byte\n\r");
            printf("\n\r Page: ");
            
            int page = Input();
            printf("\n\r Address: ");
            
            int address = Input();
            //actualyl do i2c read
            int temp = 0xA0;
            temp = temp | (page << 1);
            temp = temp & 0xFE;
            i2csetAdd(temp);
            unsigned char data = i2cRead(address);
            
            printf("\n\r Data is: %d\n\r", data);
        }

        else if(c == 'd'){
            printf("\n\r Hex Dump\n\r");
            printf("\n\r Address Start: ");
            
            int address1 = Input();  

            printf("\n\r Address End: ");
            
            int address2 = Input();         
        }
             

            //iterate through addresses, printing 16 per line

        else if(c == 'e'){
            printf("\n\r Reseting EEPROM\n\r");
            //start bit
            i2cStartonce();
            //9 bits of 1
            for(int i = 0; i < 9; i++){
                i2cClock();
            }
            //start bit
            i2cStartonce();
            //stop bit
            i2cStop();
        }

        
    }
}

