#include <stdio.h>

//CSE13E Support Library
#include "BOARD.h"

// Microchip libraries
#include <xc.h>
#include <sys/attribs.h>

#include "Adc.h"
#include "Ascii.h"
#include "Buttons.h"
#include "Leds.h"
#include "Oled.h"
#include "OledDriver.h"



// **** Set any macros or preprocessor directives here ****
// Set a macro for resetting the timer, makes the code a little clearer.
#define TIMER_2HZ_RESET() (TMR1 = 0)


// **** Set any local typedefs here ****
typedef enum {
    SETUP, SELECTOR_CHANGE_PENDING, COOKING, RESET_PENDING
} OvenState;


//changed THIS

typedef enum {
    BAKEM, TOASTM, BROILM
} Mode;







typedef struct {
    OvenState state;
    //add more members to this struct
    
    //CHANGED THIS
    
    
    uint16_t cookingTime; //
    uint16_t remaintime; //
    uint16_t temp;  //
    uint16_t mode;      //
    uint16_t timepress;       //
    
    
    
    
    
    
    
} OvenData;

// **** Declare any datatypes here ****


/// CHANGED THIS

static uint8_t ted = FALSE;                      //
static uint8_t changeadc = FALSE;               //
static uint8_t adcVal;
static uint8_t buttonevent = BUTTON_EVENT_NONE;  //
static uint16_t abstract = 0;                 //
static OvenData meanoven;                      //
static uint16_t times = 0;
static uint16_t blinled;                    //
static uint16_t patcake;                    //
static uint16_t count = 0;                  //
static uint16_t passedt;                    //
static uint16_t a;                          //
static uint16_t tick = FALSE;              //
static char down1;                       //




// **** Define any module-level, global, or external variables here ****


// **** Put any helper functions here ****


/*This function will update your OLED to reflect the state .*/
void updateOvenOLED(OvenData meanoven){
    //update OLED here
    
    // WHOLE FUNCTION
    
        char paint[60] = "";
    
    char L1[6];
    sprintf(L1, "%s%s%s%s%s", OVEN_TOP_ON, OVEN_TOP_ON, OVEN_TOP_ON, OVEN_TOP_ON, OVEN_TOP_ON);
    char L2[6];
    sprintf(L2, "%s%s%s%s%s", OVEN_TOP_OFF, OVEN_TOP_OFF, OVEN_TOP_OFF, OVEN_TOP_OFF, OVEN_TOP_OFF);
    char on[6];
    sprintf(on, "%s%s%s%s%s", OVEN_BOTTOM_ON, OVEN_BOTTOM_ON, OVEN_BOTTOM_ON, OVEN_BOTTOM_ON, OVEN_BOTTOM_ON);
    char shut[6];
    sprintf(shut, "%s%s%s%s%s", OVEN_BOTTOM_OFF, OVEN_BOTTOM_OFF, OVEN_BOTTOM_OFF, OVEN_BOTTOM_OFF, OVEN_BOTTOM_OFF);
    
    switch (meanoven.mode) {
        case BAKEM:
            if (meanoven.state == COOKING || meanoven.state == RESET_PENDING) {
                if (!ted) {
                    sprintf(paint, "%s Mode: BAKE\n|    |>Time: %d:%02d\n|    |Temp: %d%sF\n%s", L2, meanoven.cookingTime/60, meanoven.cookingTime%60, meanoven.temp, DEGREE_SYMBOL, fetOff);
                } else {
                    sprintf(paint, "%s Mode: BAKE\n|    |Time: %d:%02d\n|    |>Temp: %d%sF\n%s", L2, meanoven.cookingTime/60, meanoven.cookingTime%60, meanoven.temp, DEGREE_SYMBOL, fetOff);
                }
            } else {
                sprintf(paint, "%s Mode: BAKE\n|    |Time: %d:%02d\n|    |Temp: %d%sF\n%s", L1, meanoven.remaintime/60, meanoven.remaintime%60, meanoven.temp, DEGREE_SYMBOL, on);
            }
            break;
        case TOASTM:
            if (meanoven.state == COOKING || meanoven.state == RESET_PENDING) {
                sprintf(paint, "%s Mode: TOAST\n|    |Time: %d:%02d\n%s", L2, meanoven.cookingTime/60, meanoven.cookingTime%60, shut);
            } else {
                sprintf(paint, "%s Mode: TOAST\n|    |Time: %d:%02d\n%s", L2, meanoven.remaintime/60, meanoven.remaintime%60, on);
            }
            break;
        case BROILM:
            if (meanoven.state == COOKING || meanoven.state == RESET_PENDING) {
                sprintf(paint, "%s Mode: BROIL\n|    |Time: %d:%02d\n|    |Temp: 500%sF\n%s", L2, meanoven.cookingTime/60, meanoven.cookingTime%60, DEGREE_SYMBOL, shut);
            } else {
                sprintf(paint, "%s Mode: BROIL\n|    |Time: %d:%02d\n|    |Temp: 500%sF\n%s", L1, meanoven.remaintime/60, meanoven.remaintime%60, DEGREE_SYMBOL, shut);
            }
            break;     
    }
    
    OledDrawString(paint);
    OledUpdate();
    
    
    
    
    
    
}

/*This function will execute your state machine.  
 * It should ONLY run if an event flag has been set.*/
void runOvenSM(void)
{
    //write your SM logic here.
    
    //WHOLE FUNCTION
    
    if (meanoven.state == SETUP) {
        
            if (changeadc) {
                adcVal = AdcRead();
                adcVal = (adcVal & 0x03FC) >> 2;
                if (meanoven.mode == BAKEM && ted) {
                    meanoven.temp = adcVal + 300;
                } else {
                    meanoven.cookingTime = adcVal + 1;
                    meanoven.remaintime = meanoven.cookingTime;
                }
                
                updateOvenOLED(meanoven);
                
                
                
            }
            
            if (buttonevent & BUTTON_EVENT_3DOWN) {
                meanoven.timepress = abstract;
                meanoven.state = SELECTOR_CHANGE_PENDING;
            }
            if (buttonevent & BUTTON_EVENT_4DOWN) {
                times = abstract;
                meanoven.state = COOKING;
                LEDS_SET(0xFF);
                blinled = (meanoven.cookingTime / 8) * 5;
                patcake = (meanoven.cookingTime * 5) % 8;
                count = 0;
                
            }
          
    }else if (meanoven.state == SELECTOR_CHANGE_PENDING) {
            if (buttonevent & BUTTON_EVENT_3UP) {
                passedt = abstract - meanoven.timepress;
                if (passedt >= 5) {
                    if (meanoven.mode == BAKEM) {
                        if (ted) {
                            ted = FALSE;
                        } else {
                            ted = TRUE;
                        }
                    }
                    updateOvenOLED(meanoven);
                    meanoven.state = SETUP;
                    
                } else {
                    if (meanoven.mode == BROILM) {
                        meanoven.mode = BAKEM;
                    
                    } else {
                        meanoven.mode ++;
                    }
                    if (meanoven.mode == BROILM) {
                        a = meanoven.temp;
                        meanoven.temp = 500;
                        
                    } else if (meanoven.mode == BAKEM) {
                        meanoven.temp = a;
                    }
                    
                    updateOvenOLED(meanoven);
                    meanoven.state = SETUP;
                }
            }
            
    } else if (meanoven.state == COOKING) {
            if (tick) {
                count ++;
                if ((patcake > 0 && count == blinled + 1) || (patcake == 0 && count == blinled)) {
                    down1 = LEDS_GET();
                    count = 0;
                    patcake --;
                    LEDS_SET(down1 << 1);
                }
                if (meanoven.remaintime == 0) {
                    meanoven.remaintime = meanoven.cookingTime;
                    updateOvenOLED(meanoven);
                    LEDS_SET(0x00);
                    
                }
                
                if ((abstract - times) % 5 == 0) {
                    meanoven.remaintime--;
                    updateOvenOLED(meanoven);
                }
            }
            
            if (buttonevent & BUTTON_EVENT_4DOWN) {
                meanoven.state = RESET_PENDING;
                meanoven.timepress = abstract;
            }
            
    } else if (meanoven.state == RESET_PENDING) {
            if (tick) {
                count++;
                if ((patcake > 0 && count == blinled) || (patcake == 0 && count == blinled)) {
                    down1 = LEDS_GET();
                    count = 0;
                    patcake--;
                    LEDS_SET(down1 << 1);
                }
                if ((abstract - times) % 5 == 0) {
                    if (meanoven.remaintime) {
                        meanoven.remaintime--;
                        updateOvenOLED(meanoven);
                    }
                }
                if (abstract - meanoven.timepress >= 5) {
                    meanoven.remaintime = meanoven.cookingTime;
                    meanoven.state = SETUP;
                    updateOvenOLED(meanoven);
                    LEDS_SET(0x00);
                    
                }
                 
            }
            if (buttonevent & BUTTON_EVENT_4UP && (abstract - meanoven.timepress < 5)) {
                meanoven.state = COOKING;
            }
            
    }
    
    
    
    
    
    
    
    
    
}


int main()
{
    BOARD_Init();

     //initalize timers and timer ISRs:
    // <editor-fold defaultstate="collapsed" desc="TIMER SETUP">
    
    // Configure Timer 2 using PBCLK as input. We configure it using a 1:16 prescalar, so each timer
    // tick is actually at F_PB / 16 Hz, so setting PR2 to F_PB / 16 / 100 yields a .01s timer.

    T2CON = 0; // everything should be off
    T2CONbits.TCKPS = 0b100; // 1:16 prescaler
    PR2 = BOARD_GetPBClock() / 16 / 100; // interrupt at .5s intervals
    T2CONbits.ON = 1; // turn the timer on

    // Set up the timer interrupt with a priority of 4.
    IFS0bits.T2IF = 0; //clear the interrupt flag before configuring
    IPC2bits.T2IP = 4; // priority of  4
    IPC2bits.T2IS = 0; // subpriority of 0 arbitrarily 
    IEC0bits.T2IE = 1; // turn the interrupt on

    // Configure Timer 3 using PBCLK as input. We configure it using a 1:256 prescaler, so each timer
    // tick is actually at F_PB / 256 Hz, so setting PR3 to F_PB / 256 / 5 yields a .2s timer.

    T3CON = 0; // everything should be off
    T3CONbits.TCKPS = 0b111; // 1:256 prescaler
    PR3 = BOARD_GetPBClock() / 256 / 5; // interrupt at .5s intervals
    T3CONbits.ON = 1; // turn the timer on

    // Set up the timer interrupt with a priority of 4.
    IFS0bits.T3IF = 0; //clear the interrupt flag before configuring
    IPC3bits.T3IP = 4; // priority of  4
    IPC3bits.T3IS = 0; // subpriority of 0 arbitrarily 
    IEC0bits.T3IE = 1; // turn the interrupt on;

    // </editor-fold>
   
    
    
    T2CON = 0; // everything should be off
    T2CONbits.TCKPS = 0b100; // 1:16 prescaler
    PR2 = BOARD_GetPBClock() / 16 / 100; // interrupt at .5s intervals
    T2CONbits.ON = 1; // turn the timer on

    // Set up the timer interrupt with a priority of 4.
    IFS0bits.T2IF = 0; //clear the interrupt flag before configuring
    IPC2bits.T2IP = 4; // priority of  4
    IPC2bits.T2IS = 0; // subpriority of 0 arbitrarily 
    IEC0bits.T2IE = 1; // turn the interrupt on

    // Configure Timer 3 using PBCLK as input. We configure it using a 1:256 prescaler, so each timer
    // tick is actually at F_PB / 256 Hz, so setting PR3 to F_PB / 256 / 5 yields a .2s timer.

    T3CON = 0; // everything should be off
    T3CONbits.TCKPS = 0b111; // 1:256 prescaler
    PR3 = BOARD_GetPBClock() / 256 / 5; // interrupt at .5s intervals
    T3CONbits.ON = 1; // turn the timer on

    // Set up the timer interrupt with a priority of 4.
    IFS0bits.T3IF = 0; //clear the interrupt flag before configuring
    IPC3bits.T3IP = 4; // priority of  4
    IPC3bits.T3IS = 0; // subpriority of 0 arbitrarily 
    IEC0bits.T3IE = 1; // turn the interrupt on;

    // </editor-fold>
    
    
    
    printf("Welcome to 1874224 Lab07 (Toaster Oven).  Compiled on %s %s.", __TIME__, __DATE__);

    //initialize state machine (and anything else you need to init) here

    
    //initialize state machine (and anything else you need to init) here
    meanoven.timepress = 0;
    meanoven.cookingTime = 1;
    meanoven.remaintime = 1;
    meanoven.temp = 350;
    meanoven.state = SETUP;
    meanoven.mode = BAKEM;

    OledInit();
    ButtonsInit();
    AdcInit();
    LEDS_INIT();
    
    updateOvenOLED(meanoven);
    
    
    
    
    
    while (1){
        // Add main loop code here:
        // check for events
        // on event, run runOvenSM()
        // clear event flags
          if (buttonevent != BUTTON_EVENT_NONE || changeadc || tick) {
            runOvenSM();
            buttonevent = BUTTON_EVENT_NONE;
            changeadc = FALSE;
            tick = FALSE;
        }
    };
}


/*The 5hz timer is used to update the free-running timer and to generate TIMER_TICK events*/
void __ISR(_TIMER_3_VECTOR, ipl4auto) TimerInterrupt5Hz(void)
{
    // Clear the interrupt flag.
    IFS0CLR = 1 << 12;

    
    tick = TRUE;
    abstract++;
    //add event-checking code here
    
    
    
    
    
    //add event-checking code here
}


/*The 100hz timer is used to check for button and ADC events*/
void __ISR(_TIMER_2_VECTOR, ipl4auto) TimerInterrupt100Hz(void)
{
    // Clear the interrupt flag.
    IFS0CLR = 1 << 8;

    //add event-checking code here
    changeadc = AdcChanged();
    buttonevent = ButtonsCheckEvents();
    
}