/* 
 * File:   Buttons.c
 * Author: varamadem
 *
 * Created on October 30, 2022, 10:48 PM
 */

#include <stdint.h>
#include <genericTypeDefs.h>

#include <stdio.h>
#include <stdlib.h>
#include "BOARD.h"
#include "Buttons.h"

// Declare static ints, variables, and counts

#define BUTTONs_DEBOUNCE_PERIOD 4
static int dnum;
static uint8_t previous = 0;


void ButtonsInit(void){
    TRISD |= 0x00E0;
    TRISF |= 0x0002;
    previous = 0x00;
    dnum = 0;
    
}

uint8_t ButtonsCheckEvents(void) {
    dnum= dnum++;
    uint8_t states= BUTTON_STATES();
    uint8_t a = states=BUTTON_STATES();
    uint8_t sweep = 0x00;
    
    if(dnum<BUTTONS_DEBOUNCE_PERIOD){
        return BUTTON_EVENT_NONE;
    }
    
    dnum=0;
    
    if(a == FALSE){
        return BUTTON_EVENT_NONE;
      
    }
    
    if((a)&(BUTTON_STATE_1)){
        if(states & BUTTON_STATE_1){
            sweep |=BUTTON_EVENT_1DOWN;
        }
        else{
            sweep |= BUTTON_EVENT_1UP;
        }
    }
    
    
    if((a)&(BUTTON_STATE_2)){
        if(states & BUTTON_STATE_2){
            sweep |=BUTTON_EVENT_2DOWN;
        }
        else{
            sweep |= BUTTON_EVENT_2UP;
        }
    }
    
    if((a)&(BUTTON_STATE_3)){
        if(states & BUTTON_STATE_3){
            sweep |=BUTTON_EVENT_3DOWN;
        }
        else{
            sweep |= BUTTON_EVENT_3UP;
        }
    }
    if((a)&(BUTTON_STATE_4)){
        if(states & BUTTON_STATE_4){
            sweep |=BUTTON_EVENT_4DOWN;
        }
        else{
            sweep |= BUTTON_EVENT_4UP;
        }
    }
    
    
    previous= states;
    return sweep;
}

