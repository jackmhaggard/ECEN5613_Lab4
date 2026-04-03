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
 * The user is prompted to make one of 4 commands in a terminal environment; w for write, r for read, h for hex dump, and e for reset. 
 * This program uses an i2c library by Sriharsha at https://github.com/sriharshaq/8051-Library/blob/master/I2C/i2c.c . 
 * w prompts the user to select a page, an address, and finally a byte of data to be sent to the eeprom
 * r prompts the user for a page and an address and reports via the terminal what the data in that byte is
 * h dumps in hex the values between 2 addresses in a page set by the user with 16 bytes of data displayed per line
 * e resets the eeprom as per an709
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

    i2cSetPort();
    //sets the clock timing
    i2cBegin(11059200, 1);
    //sets a defualt address
    i2csetAdd(0xA0);
    printf("\n\r Lab4 Part 1 EEPROM Program\n\r");

    while(1){
        
        
        Program();
    }

}
//grabs input from the terminal over uart
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
        printf("\n\r w : Write Byte\n\r");
        printf("\n\r r : Read Byte\n\r");
        printf("\n\r h : Hex Dump\n\r");
        printf("\n\r e : Reset EEPROM\n\r");
        c = getchar();
        putchar(c);
        if(c == 'w')
        {
            //writes a byte to an address
            printf("\n\r Writing a Byte\n\r");
            printf("\n\r Page: ");
            
            int page = Input();
            printf("\n\r Address: ");
            
            int address = Input();

            printf("\n\r Data: ");

            int data = Input();
            //sets up the correct device and page address
            int temp = 0xA0;
            temp = temp | (page << 1);
            temp = temp & 0xFE;
            i2csetAdd(temp);
            i2cWrite(data, address);
        }
        //reads the contents of an address
        else if(c == 'r'){
            printf("\n\r Reading a Byte\n\r");
            printf("\n\r Page: ");
            
            int page = Input();
            printf("\n\r Address: ");
            
            int address = Input();
            //sets up the correct device and page address
            int temp = 0xA0;
            temp = temp | (page << 1);
            temp = temp & 0xFE;
            i2csetAdd(temp);
            unsigned char data = i2cRead(address);
            
            printf("\n\r Data is: %d\n\r", data);
        }
        //prints the contents of a page between 2 addresses with 16 bytes per line
        else if(c == 'h'){
            printf("\n\r Hex Dump\n\r");
            printf("\n\r Page: ");
            int page = Input();
            printf("\n\r Address Start: ");

            int address1 = Input();  

            printf("\n\r Address End: ");
            
            int address2 = Input();
            int length = address2-address1;  
            //sets up the correct device and page address
            int temp = 0xA0;
            temp = temp | (page << 1);
            temp = temp & 0xFE;
            i2csetAdd(temp);      
            for(int i = 0; i < length; i++){
                if(i % 16 == 0){
                    printf("\n\r ");
                    printf("%X%X ", page, address1+i);
                }
                unsigned char data = i2cRead(address1+i);
                printf("%X ", data);
            }
            
        }
             

        //resets the 24lc16b as per an709 
        else if(c == 'e'){
            printf("\n\r Reseting EEPROM\n\r");
            //start bit
            i2cStartonce();
            //9 bits of 1
            for(int i = 0; i < 9; i++){
                SDA_HIGH;
                SCL_HIGH;
                i2cClock();
                SCL_LOW;
                i2cClock();
            }
            //start bit
            i2cStartonce();
            //stop bit
            i2cStop();
        }

        
    }
}

