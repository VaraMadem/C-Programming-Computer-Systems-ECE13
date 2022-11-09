
// **** Include libraries here ****
// old bounce
// Standard libraries
#include <stdio.h>
					
//CMPE13 Support Library
#include "BOARD.h"
#include "Leds_Lab06.h"

// Microchip libraries
#include <xc.h>
#include <sys/attribs.h>

// **** Declare any datatypes here ****


// **** Define global, module-level, or external variables here ****
struct Timer {
    uint8_t event;
    int16_t timeRemaining;
};

static struct Timer TimerA;


#define LEFT 0
#define RIGHT 1
static int state = LEFT;
uint8_t current;

#define LED1 0x01
#define LED8 0x80
//uint8_t defaultLED = 0x80;
// **** Declare function prototypes ****


int main(void)
{
    BOARD_Init();
    LEDS_INIT();

    // Configure Timer 1 using PBCLK as input. This default period will make the LEDs blink at a
    // pretty reasonable rate to start.
    T1CON = 0; // everything should be off
    T1CONbits.TCKPS = 1; // 1:8 prescaler
    PR1 = 0xFFFF; // interrupt at max interval
    T1CONbits.ON = 1; // turn the timer on

    // Set up the timer interrupt with a priority of 4.
    IFS0bits.T1IF = 0; //clear the interrupt flag before configuring
    IPC1bits.T1IP = 4; // priority of  4
    IPC1bits.T1IS = 0; // subpriority of 0 arbitrarily 
    IEC0bits.T1IE = 1; // turn the interrupt on

    /***************************************************************************************************
     * Your code goes in between this comment and the following one with asterisks.
     **************************************************************************************************/
    printf("Welcome to 1872442's lab6 part2 (bounce_switch).  Compiled on %s %s.\n",__TIME__,__DATE__);
    
    // Initialize LEDS
    //LEDS_INIT();
    
    state = LEFT;
    LEDS_SET(0x80);
    while(1){
        current = LEDS_GET();
        
        if(TimerA.event ==1){
            if(current == LED8 && state==LEFT){
            state= RIGHT;
            LEDS_SET(current >>1);
          
        }
        
        else if(current == LED1 && state= RIGHT){
            state = LEFT;
            LEDS_SET(current <<1);
        }
        
        else if(state== RIGHT){
            LEDS_SET(current>>1);
        }
        
        else if(state== LEFT){
            LEDS_SET(current << 1);
        }
        TimerA.event =0;
    }
    
    }
    
 
    /***************************************************************************************************
     * Your code goes in between this comment and the preceding one with asterisks
     **************************************************************************************************/
}

/**
 * This is the interrupt for the Timer1 peripheral. It will trigger at the frequency of the peripheral
 * clock, divided by the timer 1 prescaler and the interrupt interval.
 * 
 * It should not be called, and should communicate with main code only by using module-level variables.
 */
void __ISR(_TIMER_1_VECTOR, ipl4auto) Timer1Handler(void)
{
    // Clear the interrupt flag.
    IFS0bits.T1IF = 0;

    /***************************************************************************************************
     * Your code goes in between this comment and the following one with asterisks.
     **************************************************************************************************/
    uint8_t swtichstates = SWITCH_STATES();
    
    if(TimerA.timeRemaining == 0){
        if(SWITCH_STATES() == 0x00){
            TimerA.event =1;
            TimerA.timeRemaining =16;
        }
        else if(SWITCH_STATES()== 0x01){
            TimerA.event =1;
            TimerA.timeRemaining = 15;
        }
        else if(SWITCH_STATES()== 0x02){
            TimerA.event =1;
            TimerA.timeRemaining = 14;
        }
        else if(SWITCH_STATES()== 0x03){
            TimerA.event =1;
            TimerA.timeRemaining = 13;
        }
        else if(SWITCH_STATES()== 0x04){
            TimerA.event =1;
            TimerA.timeRemaining = 12;
        }
        else if(SWITCH_STATES()== 0x05){
            TimerA.event =1;
            TimerA.timeRemaining = 11;
        }
        else if(SWITCH_STATES()== 0x06){
            TimerA.event =1;
            TimerA.timeRemaining = 10;
        }
        else if(SWITCH_STATES()== 0x07){
            TimerA.event =1;
            TimerA.timeRemaining = 9;
        }
        else if(SWITCH_STATES()== 0x08){
            TimerA.event =1;
            TimerA.timeRemaining = 8;
        }
        else if(SWITCH_STATES()== 0x09){
            TimerA.event =1;
            TimerA.timeRemaining = 7;
        }
        else if(SWITCH_STATES()== 0x0A){
            TimerA.event =1;
            TimerA.timeRemaining = 6;
        }
        else if(SWITCH_STATES()== 0x0B){
            TimerA.event =1;
            TimerA.timeRemaining = 5;
        }
        else if(SWITCH_STATES()== 0x0C){
            TimerA.event =1;
            TimerA.timeRemaining = 4;
        }
        else if(SWITCH_STATES()== 0x0D){
            TimerA.event =1;
            TimerA.timeRemaining = 3;
        }
        else if(SWITCH_STATES()== 0x0E){
            TimerA.event =1;
            TimerA.timeRemaining = 2;
        }
        else if(SWITCH_STATES()== 0x0F){
            TimerA.event =1;
            TimerA.timeRemaining = 1;
        }
    }
    
    
   
    /***************************************************************************************************
     * Your code goes in between this comment and the preceding one with asterisks
     **************************************************************************************************/									
	 
}