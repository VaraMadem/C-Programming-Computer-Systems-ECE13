/* 
 * File:   stack.c
 * Author: varamadem
 *
 * Created on October 18, 2022, 4:55 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "stack.h"
#include "BOARD.h"

/*
 * 
 */
void StackInit(struct Stack *stack){
    stack->currentItemIndex = -1;
    stack->initialized = TRUE;
}

int StackPush(struct Stack *stack, double value){
    if (stack->initialized == TRUE && stack->currentItemIndex < STACK_SIZE - 1) {
        stack->currentItemIndex++;
        stack->stackItems[stack->currentItemIndex] = value;
        return SUCCESS;
    } else {
        return STANDARD_ERROR;
    }
}

int StackPop(struct Stack *stack, double *value){
    if (stack->initialized == TRUE && stack->currentItemIndex > -1){
        *value = stack->stackItems[stack->currentItemIndex];
        stack->currentItemIndex--;
        return SUCCESS;    
    } else {
        return STANDARD_ERROR;
    }
}


int StackIsEmpty(const struct Stack *stack){
    int placeholderempty = -1;
    if (stack->initialized == TRUE && stack->currentItemIndex == placeholderempty){
        return TRUE;
    }
    return FALSE;
}


int StackIsFull(const struct Stack *stack){
    if (stack->currentItemIndex == STACK_SIZE - 1 && stack->initialized == TRUE){
        return TRUE;
    }
    return FALSE;
}


int StackGetSize(const struct Stack *stack){
    if (stack->initialized == TRUE){
        return stack->currentItemIndex+1;
    }
    return SIZE_ERROR;
}

