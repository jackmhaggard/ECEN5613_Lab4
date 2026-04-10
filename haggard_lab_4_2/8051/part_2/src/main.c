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
#include <stdint.h>
#include <string.h>

#define enable (__xdata uint8_t *)0x8000
//#define lcdread (__xdata uint8_t *)0xE000
//#define lcdwrite (__xdata uint8_t *)0xC000
//#define lcdbusy (__xdata uint8_t *)0xA000

//volatile __xdata uint8_t __at(enable) Enable ;
//volatile __xdata uint8_t __at(lcdread) LCDRead ;
//volatile __xdata uint8_t __at(lcdwrite) LCDWrite ;
//volatile __xdata uint8_t __at(lcdbusy) LCDBusy ;

#define RS P1_6
#define RW P1_5
#define RS_HIGH RS = 1
#define RW_HIGH RW = 1
#define RW_LOW RW = 0
#define RS_LOW RS = 0

unsigned int row0 = 0x00;
unsigned int row1 = 0x40;
unsigned int row2 = 0x10;
unsigned int row3 = 0x50;

volatile unsigned int rowcol[2];




#define TMOD_MODE1_POS  0 
volatile int current_overflow_count;
volatile int reload_counter;
volatile unsigned int time;
volatile bool state = 0;

void main(){
    lcdinit();
    init_timer_registers();
    printf("\n\r Lab4 Part 2 LCD Program\n\r");

    while(1){
        
        
        Program();
    }

}
//grabs input from the terminal over uart
int Input(){
    char temp[2];
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
    int c;
    printf("\n\r ------ Commands ------\n\r");
    printf("\n\r c : Clear Screen\n\r");
    printf("\n\r p : putChar \n\r");
    printf("\n\r s : putStr\n\r");
    printf("\n\r g : Go to x, y\n\r");
    printf("\n\r h : Stop timer\n\r");
    printf("\n\r r : Restart Timer\n\r");
    printf("\n\r z : Reset Timer\n\r");

    while(1)
    {
        

        c = getcharmain();
        if(c == -1){
            continue;
        }
        if(reload_counter){
            lcdtimer();
        }
        putchar(c);
        if(c == 'c'){
            lcdclear();
        }
        else if(c == 'p'){
            printf("\n\r Input a char: ");
            char temp = getchar();
            lcdputch(temp);

        }
        else if(c == 's'){
            printf("\n\r Input a string: ");

            char temp[64];
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
            lcdputstr(temp);
            temp[i] = '\0';
            printf("\n\r");

        }
        else if(c == 'g'){
            printf("\n\r x:");
            unsigned char x = Input();
            printf("\n\r y:");
            unsigned char y = Input();
            lcdgotoxy(y,x);

        }
        else if(c == 'h'){
            state = true;
            printf("\n\r");
        }
        else if(c == 'r'){
            state = false;
            TR0 = 1;
            printf("\n\r");

        }
        else if(c == 'z'){
            time = 0;
            printf("\n\r");
        }
    }
}

void lcdinit(){
    delay(50000);
    RS_LOW;
    RW_LOW;
    *enable = 0x30;
    delay(6000);
    RS_LOW;
    RW_LOW;
    *enable = 0x30;
    delay(1000);
    RS_LOW;
    RW_LOW;
    *enable = 0x30;
    lcdbusywait();
    //function set
    RS_LOW;
    RW_LOW;
    *enable = 0x38;
    lcdbusywait();
    //display off
    RS_LOW;
    RW_LOW;
    *enable = 0x08;
    lcdbusywait();
    //display on
    RS_LOW;
    RW_LOW;
    *enable = 0x0C;
    lcdbusywait();
    //Entry Mode Set
    RS_LOW;
    RW_LOW;
    *enable = 0x06;
    lcdbusywait();
    //Entry Mode Set
    RS_LOW;
    RW_LOW;
    *enable = 0x01;


}

// Description: Polls the LCD busy flag. Function does not return
// until the LCD controller is ready to accept another command.
void lcdbusywait(){

    //how do I actually read the flag? 
    RS_LOW;
    RW_HIGH;
    while(*enable & 0x80){

    }
}

// Description: Sets the cursor to the specified LCD DDRAM address.
// Should call lcdbusywait().
void lcdgotoaddr(unsigned char addr){
    //set ddram address 
    

    
    lcdbusywait();
    RS_LOW;
    RW_LOW;
    delay(1000);
    *enable = 0x80 + addr;

}

// Description: Sets the cursor to the LCD DDRAM address corresponding
// to the specified row and column. Location (0,0) is the top left
// corner of the LCD screen. Must call lcdgotoaddr().
void lcdgotoxy(unsigned char row, unsigned char col){
    unsigned int address = 0;
    if(row == 0){
        address = row0 + col;
        lcdgotoaddr(address);
        rowcol[0] = row;
        rowcol[1] = col;
    }
    else if(row == 1){
        address = row1 + col;
        lcdgotoaddr(address);
        rowcol[0] = row;
        rowcol[1] = col;
    }
    else if(row == 2){
        address = row2 + col;
        lcdgotoaddr(address);
        rowcol[0] = row;
        rowcol[1] = col;
    }
    else if(row == 3){
        address = row3 + col;
        lcdgotoaddr(address);
        rowcol[0] = row;
        rowcol[1] = col;
    }
}

// Description: Writes the specified character to the current
// LCD cursor position. Should call lcdbusywait().

void lcdputch(char cc){
    
    
    lcdbusywait();
    RS_HIGH;
    RW_LOW;
    //delay(1000);

    *enable = cc;
    if(rowcol[1] >= 15){
        if(rowcol[0] == 0){
            lcdgotoxy(1,0);
        }
        else if(rowcol[0] == 1){
            lcdgotoxy(2,0);
        }
        else if(rowcol[0] == 2){
            lcdgotoxy(3,0);
        }
        else if(rowcol[0] == 3){
            lcdgotoxy(0,0);
        }
    }
    else{
        lcdgotoxy(rowcol[0], rowcol[1]+1);
    }
}

// Description: Writes the specified null-terminated string to the LCD
// starting at the current LCD cursor position. Automatically wraps
// long strings to the next LCD line after the right edge of the
// display screen has been reached. Must call lcdputch().
void lcdputstr(char *ss){
    unsigned int size = strlen(ss);
    for(int i = 0; i < size; i++){
        lcdputch(*(ss + i));
    }
}

// Description: Clears the LCD using the HD44780 Clear display instruction.
void lcdclear(){
    lcdbusywait();
    RS_LOW;
    RW_LOW;
    delay(1000);
    *enable = 0x01;
}

//just a delay function
void delay(unsigned int time){

    while(--time);
}

void init_timer_registers()
{
    TMOD |= 1 << TMOD_MODE1_POS;
    // to generate an overflow every 500us
    TH0 = 0x4C;
    TL0 = 0x00;
    ET0 = 1; // enable timer0 interrupt
    EA = 1;  // enable global interrupt
    TR0 = 1;
}

void lcdtimer(){
    unsigned int temprowcol[2];
    temprowcol[0] = rowcol[0];
    temprowcol[1] = rowcol[1];
    
    unsigned int temp = 0;
    unsigned int miliseconds = 0;
    unsigned int seconds = 0;
    unsigned int minutes = 0;
    minutes = time / 600;
    temp = time % 600;
    seconds = temp / 10;
    miliseconds = temp % 10;
    lcdgotoxy(3,9);

    //Minutes
    lcdputch((minutes / 10) + '0');
    lcdputch((minutes % 10) + '0');

    lcdputch(':');

    //Seconds
    lcdputch((seconds / 10) + '0');
    lcdputch((seconds % 10) + '0');

    lcdputch('.');

    //Tenths
    lcdputch(miliseconds + '0');
    lcdgotoxy(temprowcol[1], temprowcol[0]);

    
}

void timer0_ISR(void) __interrupt(TF0_VECTOR)
{
    if(state){
        TR0 = 0;
    }else if(!state){
        if(reload_counter){
            reload_counter = false;
            time++;
            
        }
        else{
            reload_counter = true;
        }
        P1_1 = !P1_1;
        TH0 = 0x4C;
        TL0 = 0x00;
        TR0 = 1;  
        
    }
    
}