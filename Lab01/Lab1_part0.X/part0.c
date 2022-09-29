/* 
 * File:   part0.c
 * Author: varamadem
 *
 * Created on September 29, 2022, 4:14 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "BOARD.h"

/*
 * 
 */
int main(void) {
    
    BOARD_Init();
    printf("Hello World \n");
    
    BOARD_End();
    while(1); 
    
    
}

