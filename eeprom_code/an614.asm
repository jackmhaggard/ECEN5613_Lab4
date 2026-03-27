$MOD51
;REGISTER ASSIGNMENTS
;
;R1     DATA OR DATA POINTER
;R2     LOOP COUNTER REGISTER
;R3     ADDRESS, HI BYTE
;R4     ADDRESS, LOW BYTE
;R5
;R6     BYTE COUNT FOR PAGE OPERATIONS

;PIN ASSIGNMENTS:
;Port 1 bit 0 is data
;Port 1 bit 1 is clock
;
;       These routines assume chip address = 0
;
;       The oscillator frequency assumed for this app note is 12 MHz
;
;       These routines use software timing loops.  They may have to be
;       adjusted if a different oscillator frequency is used.
;
;NOTE 1 These NOP's added for timing delays only on 'C' parts, OR 'LC' parts
;       where Vcc is less than 4.5V and the oscillator frequency is 12 MHz.
;       This allows a bit rate of 100kHz.
;NOTE 2 Use these NOP's with a 16MHz oscillator and 100kHz bit rate.
;       For 400kHz bit rate, the NOP's in Note 1 and Note 2 are not required.
;
; The EEPROM will be busy after a write cycle is initiated (by a stop condition)
; for between 1mS to 10mS per page (or per byte if a byte write).  This app note
; assumes the user will program appropriate wait times after  write, or check
; for Busy status.  A subroutine is provided to check the Busy Status.
;
; RAM DEFINITIONS
        DSEG
ORG     30H
BYTSTR: DS      20H             ;STORAGE FOR READ DATA
;
;CONSTANTS -- REDEFINE AS NECESSARY
;
WTCMD   EQU     10100000B       ;WRITE DATA COMMAND Note 3
RDCMD   EQU     10100001B       ;READ DATA COMMAND Note 3
RDEND   EQU     01000000B       ;READ HIGH-ENDURANCE BLOCK NUMBER COMMAND
ADDRH   EQU     0
ADDRL   EQU     0               
DTA     EQU     55H
BYTCNT  EQU     8
;
;Note 3 Some chip or byte address bits are embedded in the control byte.  
;Refer to the data sheet for exact configuration, which varies from part
;to part.
;
;************************************************************************
; This section contains test loop routines.  THey form a simple operating
; shell to allow the 2-wire interface code to be tested in a stand-alone 
; mode.  Using an emulator, change "NONE" to one of the four listed 
; routines to test that function.  The address and data constants can also
; be set as desired.
; If using a 32Kbit or higher density serial EEPROM, change the called 
; routines by adding 'L' to the end of the name.  THis is required because
; theseparts use TWO address bytes.  The 'L' routines send out the extra 
; address byte.
;*************************************************************************
        CSEG
ORG     0
        JMP     START
START:  MOV     P1,#0FFH        ;INIT PORT1
        CALL    NONE            ;TEST LOOP INSERT PROPER ADDRESS HERE
        JMP     START
        
NONE:   RET
;*
;* WRITE ONE BYTE TO EEPROM
;* The Address Pointer is the address in the EEPROM.  The byte to be sent to the 
;* EEPROM is stored in the constant 'DTA'
;* 
TESTWR: MOV     R3,#ADDRH     ;LOAD ADDRESS POINTER FOR HIGH DENSITY ONLY
        MOV     R4,#ADDRL     ;LOAD ADDRESS POINTER FOR ALL DEVICES
        MOV     R1,#DTA       ;LOAD DATA BYTE
        CALL    BYTEW         ;CALL PAGE WRITE ROUTINE
        RET

;*
;* WRITE A BLOCK OF DATA TO EEPROM
;* The address pointer is the address in EEPROM where data will start.  
;* The byte pointer is the starting address of RAM containing the block 
;* of data to be sent.  The byte count indicates how many bytes to send to
;* the EEPROM. The number of bytes that can be sent before a STOP command 
;* is issued is dependent on EEPROM type.  Refer to the data book for 
;* specific values.
;*
BLKWR:  MOV     R3,#ADDRH     ;LOAD ADDRESS POINTER FOR HIGH DENSITY ONLY
        MOV     R4,#ADDRL     ;LOAD ADDRESS POINTER FOR ALL DEVICES
        MOV     R1,#BYTSTR    ;LOAD BYTE POINTER
        MOV     R6,#BYTCNT    ;LOAD BYTE COUNT
        CALL    PAGEW         ;CALL PAGE WRITE ROUTINE
        RET
        
;*
;* READ ONE BYTE FROM EEPROM
;* The address pointer is the address of the desired byte in EEPROM.
;* The byte will be returned in R1.
;*
TESTRD: MOV     R3,#ADDRH     ;LOAD ADDRESS POINTER FOR HIGH DENSITY ONLY
        MOV     R4,#ADDRL     ;LOAD ADDRESS POINTER FOR ALL DEVICES
        CALL    BYTERD        ;CALL BYTE READ ROUTINE.
        MOV     R1,A          ;SAVE THE BYTE
        RET
        
;*
;* READ A BLOCK FROM EEPROM
;* The address pointer is the starting address of the desired data block
;* in EEPROM.  The data pointer is the starting address in RAM where data 
;* will be stored.  The byte count indicates how many bytes should be read.
;* The entire EEPROM may be read with one READ command this way.
;*
BLOKRD: MOV     R3,#ADDRH       ;LOAD ADDRESS POINTER FOR HIGH DENSITY ONLY
        MOV     R4,#ADDRL       ;LOAD ADDRESS POINTER FOR ALL DEVICES
        MOV     R1,#BYTSTR      ;LOAD DATA POINTER
        MOV     R6,#BYTCNT      ;LOAD BYTE COUNT
        CALL    BLKRD           ;CALL BLOCK READ ROUTINE
        RET
        
;* END OF TEST LOOP
;***********************************************************


;***********************************************************
; This routine writes a byte of data to EEPROM
; The EEPROM address is assumed to be in R4.  See NOTE 3
; The DATA to be written is asumed to be in R1
;***********************************************************
BYTEW:  MOV     A,#WTCMD        ;LOAD WRITE COMMAND
        CALL    OUTS            ;SEND IT
        MOV     A,R4            ;GET BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R1            ;GET DATA
        CALL    OUT             ;SEND IT
        CALL    STOP            ;SEND STOP CONDITION
        RET
        
;******************************************************************
; THIS ROUTINE WRITES A PAGE OF DATA TO EEPROM
; The EEPROM start address is assumed to be in R4.  See NOTE 3
; The DATA pointer is in R1
; The BYTE count is in R6
; The number of bytes that can be transferred depends upon the
; EEPROM used
;******************************************************************
PAGEW:  MOV     A,#WTCMD        ;LOAD WRITE COMMAND
        CALL    OUTS            ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
BTLP:   MOV     A,@R1           ;GET DATA
        CALL    OUT             ;SEND IT
        INC     R1              ;INCREMENT DATA POINTER
        DJNZ    R6,BTLP         ;LOOP TILL DONE
        CALL    STOP            ;SEND STOP CONDITION
        RET                            


;**********************************************************************
; THIS ROUTINE READS A BLOCK OF DATA FROM EEPROM AT A SPECIFIED ADDRESS
; EEPROM address in R4.  See NOTE 3.
; Stores data at RAM location pointed to by R1
; Byte count specified in R6.  May be 1 to 256 bytes
;**********************************************************************
BLKRD:  MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,#RDCMD        ;LOAD READ COMMAND
        CALL    OUTS            ;SEND IT
BRDLP:  CALL    IN              ;READ DATA
        MOV     @R1,a           ;STORE DATA
        INC     R1              ;INCREMENT DATA POINTER
        DJNZ    R6,AKLP         ;DECREMENT LOOP COUNTER
        CALL    STOP            ;IF DONE, ISSUE STOP CONDITION
        RET                     ;DONE, EXIT ROUTINE

AKLP:   CLR     P1.0            ;NOT DONE, ISSUE ACK
        SETB    P1.1            
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1
        JMP     BRDLP           ;CONTINUE WITH READS
        
;*******************************************************************
; THIS ROUTINE READS A BYTE OF DATA FROM THE EEPROM
; The EEPROM address is in R4.  See Note 3
; Returns the data byte in R1
;*******************************************************************
BYTERD: MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        CALL    CREAD           ;GET DATA BYTE
        RET

;*******************************************************************
; THIS ROUTINE READS A BYTE OF DATA FROM EEPROM
; From EEPROM current address pointer.
; Returns the data byte in R1
;*******************************************************************
CREAD:  MOV     A,#RDCMD        ;LOAD READ COMMAND
        CALL    OUTS            ;SEND IT
        CALL    IN              ;READ DATA
        MOV     R1,A            ;STORE DATA
        CALL    STOP            ;SEND STOP CONDITION
        RET
        
;**********************************************************************
; The next four routines are used with the the 24xx32 or 24xx65 only. 
; These parts require two address bytes, and these routines send the 
; second byte out.  Other than this, these routines are the same as the 
; previous four.
;**********************************************************************
; THIS ROUTINE READ A BLOCK OF DATA FROM EEPROM AT A SPECIFIED ADDRESS
; This routine is for the 24LC32 or 24LC65.  
; EEPROM address in R3:R4.
; Stores data at RAM locatoin pointed to by R1
; Byte count specified in R6.  May be 1 to 256 bytes
;**********************************************************************
BLKRDL: MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,R3            ;GET HI BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,#RDCMD        ;LOAD READ COMMAND
        CALL    OUTS            ;SEND IT
        JMP     BRDLP           ;CONTINUE WITH DATA READ
        
;**********************************************************************
; This routine writes a byte of data to EEPROM
; This routine is for the 24LC32 or 24LC65
; The EEPROM address is assumed to be in R3:R4
; The DATA to be written is assumed to be in R1
;**********************************************************************
BYTEWL: MOV     A,#WTCMD        ;LOAD WRITE COMMAND
        CALL    OUTS            ;SEND IT
        MOV     A,R3            ;GET HI BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R1            ;GET DATA
        CALL    OUT             ;SEND IT
        CALL    STOP            ;SEND STOP CONDITION
        RET
        
;**********************************************************************
; THIS ROUTINE WRITES A PAGE OF DATA TO EEPROM
; This routine is for the 24LC32 or 24LC65
; The EEPROM start address is assumed to be in R3:R4
; The DATA pointer is in R1
; The BYTE count is in R6
; The number of bytes that can be transfered depends on the 
; EEPROM in use                               
;*********************************************************************
PAGEWL: MOV     A,#WTCMD        ;LOAD WRITE COMMAND
        CALL    OUTS            ;SEND IT
        MOV     A,R3            ;GET HIYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
BTLPL:  MOV     A,@R1           ;GET DATA
        CALL    OUT             ;SEND IT
        INC     R1              ;INCREMENT DATA POINTER
        DJNZ    R6,BTLPL        ;LOOP TILL DONE
        CALL    STOP            ;SEND STOP CONDITION
        RET
                
;*********************************************************************
; THIS ROUTINE READS A BYTE OF DATA FROM THE EEPROM
; This routine is for the 24CL32 or 24LC65
; The EEPROM address is in R3:R4
; Returns the data byte in R1
;*********************************************************************
BYTERDL:
        MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,R3            ;GET HI BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        CALL    CREAD           ;GET DATA BYTE
        RET
;
; SUBROUTINES
;
;*********************************************************************
; This routine test for WRITE DONE condition 
; by testing for an ACK.
; This routine can be run as soon as a STOP condition
; has been generated after the last data byte has been sent
; to the EEPROM. The routine loops until an ACK is received from 
; the EEPROM. No ACK will be received until the EEPROM is done with
; the write operation.
;*********************************************************************
ACKTST: MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        MOV     R2,#8           ;LOOP COUNT -- EQUAL TO BIT COUNT
        CLR     P1.0            ;START CONDITION -- DATA = 0
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP     
        CLR     P1.1            ;CLOCK = 0
AKTLP:  RLC     A               ;SHIFT BIT
        JNC     AKTLS
        SETB    P1.0            ;DATA = 1
        JMP     AKTL1           ;CONTINUE
AKTLS:  CLR     P1.0            ;DATA = 0
AKTL1:  SETB    P1.1            ;CLOCK HI
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1            ;CLOCK LOW
        DJNZ    R2,AKTLP        ;DECREMENT COUNTER
        SETB    P1.0            ;TURN PIN INTO INPUT
        NOP                     ;NOTE 1
        NOP                     ;NOTE 2
        SETB    P1.1            ;CLOCK ACK
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        JNB     P1.0,EXIT       ;EXIT IF ACK (WRITE DONE)
        JMP     ACKTST          ;START OVER
EXIT:   CLR     P1.1            ;CLOCK LOW
        CLR     P1.0            ;DATA LOW
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        SETB    P1.1            ;CLOCK HIGH
        NOP
        NOP
        SETB    P1.0            ;STOP CONDITION
        RET



;***********************************************************************
; THIS ROUTINE SENDS OUT CONTENTS OF THE ACCUMULATOR
; to the EEPROM and includes START condition.  Refer to the data sheets
; for discussion of START and STOP conditions.
;***********************************************************************

OUTS:   MOV     R2,#8           ;LOOP COUNT -- EQUAL TO BIT COUNT
        SETB    P1.0            ;INSURE DATA IS HI               
        SETB    P1.1            ;INSURE CLOCK IS HI
        NOP                     ;NOTE 1
        NOP                     
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.0            ;START CONDITION -- DATA = 0
        NOP                     ;NOTE 1
        NOP      
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1            ;CLOCK = 0
OTSLP:  RLC     A               ;SHIFT BIT
        JNC     BITLS
        SETB    P1.0            ;DATA = 1
        JMP     OTSL1           ;CONTINUE
BITLS:  CLR     P1.0            ;DATA = 0
OTSL1:  SETB    P1.1            ;CLOCK HI
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1            ;CLOCK LOW
        DJNZ    R2,OTSLP        ;DECREMENT COUNTER
        SETB    P1.0            ;TURN PIN INTO INPUT
        NOP                     ;NOTE 1
        NOP                     ;NOTE 2
        NOP                     
        SETB    P1.1            ;CLOCK ACK
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1
        RET

;**********************************************************************
; THIS ROUTINE SENDS OUT CONTENTS OF ACCUMLATOR TO EEPROM
; without sending a START condition.
;**********************************************************************

OUT:    MOV     R2,#8           ;LOOP COUNT -- EQUAL TO BIT COUNT
OTLP:   RLC     A               ;SHIFT BIT
        JNC     BITL            
        SETB    P1.0            ;DATA = 1
        JMP     OTL1            ;CONTINUE
BITL:   CLR     P1.0            ;DATA = 0
OTL1:   SETB    P1.1            ;CLOCK HI
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1            ;CLOCK LOW
        DJNZ    R2,OTLP         ;DECREMENT COUNTER
        SETB    P1.0            ;TURN PIN INTO INPUT
        NOP                     ;NOTE 1
        NOP                     ;NOTE 2
        NOP
        SETB    P1.1            ;CLOCK ACK
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1
        RET
        
;**********************************************************************
; THIS ROUTINE READS IN A BYTE FROM THE EEPROM
; and stores it in the accumulator
;**********************************************************************

IN:     MOV     R2,#8           ;LOOP COUNT
        SETB    P1.0            ;SET DATA BIT HIGH FOR INPUT
INLP:   CLR     P1.1            ;CLOCK LOW
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        SETB    P1.1            ;CLOCK HIGH
        CLR     C               ;CLEAR CARRY
        JNB     P1.0,INL1       ;JUMP IF DATA = 0
        CPL     C               ;SET CARRY IF DATA = 1
INL1:   RLC     A               ;ROTATE DATA INTO ACCUMULATOR
        DJNZ    R2,INLP         ;DECREMENT COUNTER
        CLR     P1.1            ;CLOCK LOW
        RET
        

STOP:   CLR     P1.0            ;STOP CONDITION SET DATA LOW
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        SETB    P1.1            ;SET CLOCK HI
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        SETB    P1.0            ;SET DATA HIGH
        RET
        
;***********************************************************************
; These routines contain special commands for the 24LC65 SMART SERIAL                                                
; EEPROM
; SET SECURE BLOCK ASSUMES
; START BLOCK 0 & BLOCK LENGTH OF 1.  The
; numbers are implicit in the commands.  
; Refer to the data sheet for details.
;*
SETSEC: MOV     R3,#80H         ;SEND COMMAND AND STARTING BLOCK NUMBER
        MOV     R4,#0           ;
        MOV     R1,#81H         ;COMMAND FOR NUMBER OF BLOCKS TO SECURE
        CALL    BYTEW           ;EXECUTE
        RET
        
;*
; READ SECURE BLOCK NUBER(S)
; RETURNS BLOCK NUMBER IN R1 AND BLOCKCOUNT IN R2
; (UPPER NIBBLES WILL BE 1'S)
;*

RDSEC:  MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,#80H          ;LOAD COMMAND
        CALL    OUT             ;SEND IT
        MOV     A,#0            ;LOAD COMMAND
        CALL    OUT             ;SEND IT
        MOV     A,#0C0H         ;LOAD COMMAND
        CALL    OUT             ;SEND IT
        CALL    IN              ;READ STARTING BLOCK NUMBER
        MOV     R1,A            ;STORE IT
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.0            ;ISSUE ACK
        SETB    P1.1            
        NOP                     ;NOTE 1
        NOP
        NOP
        NOP                     ;NOTE 2
        NOP
        CLR     P1.1            
        CALL    IN              ;READ NUMBER OF BLOCKS
        MOV     R2,A            ;STORE IT
        CALL    STOP            ;SEND STOP CONDITION
        RET
        

;*
; SET HIGH-ENDURANCE BLCOK NUMBER
; ASSUMES BLOCK 0
;*
SETHI:  MOV     R3,#080H        ;LOAD COMMAND AND BLOCK NUMBER
        MOV     R4,#0           
        MOV     R1,#0           ;SET DATA = 0
        CALL    BYTEW           ;EXECUTE
        RET
        
;*
; READ HIGH ENDURANCE BLOCK NUMBER
; RETURNS BLOCK NUMBER IN R1 (UPPER NIBBLE WILL BE 1'S)
;*
READHI: MOV     R3,#080H        ;LOAD COMMAND
        MOV     R4,#0          
        CALL    HIEND           ;EXECUTE
        RET
        
HIEND:  MOV     A,#WTCMD        ;LOAD WRITE COMMAND TO SEND ADDRESS
        CALL    OUTS            ;SEND IT
        MOV     A,R3            ;GET HI BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,R4            ;GET LOW BYTE ADDRESS
        CALL    OUT             ;SEND IT
        MOV     A,#RDEND        ;LOAD READ COMMAND
        CALL    OUT             ;SEND IT
        CALL    IN              ;READ DATA
        MOV     R1,A            ;STORE DATA
        CALL    STOP            ;SEND STOP CONDITION
        RET
        
;END of 24LC65 Routines
;********************************************************************
END                                

