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
// Set stack values to variables
    stack->currentItemIndex = -1;
    stack->initialized = TRUE;
}

int StackPush(struct Stack *stack, double value){
    if (stack->initialized == TRUE && stack->currentItemIndex < STACK_SIZE - 1) {
        stack->currentItemIndex++;
        // sets value of the stack
        stack->stackItems[stack->currentItemIndex] = value;
        // return success
        return SUCCESS;
    } else {
        // If stack is not initialized as true, it will return error.
        return STANDARD_ERROR;
    }
}

int StackPop(struct Stack *stack, double *value){
    if (stack->initialized == TRUE && stack->currentItemIndex > -1){
        *value = stack->stackItems[stack->currentItemIndex];
        // decrement stack index
        stack->currentItemIndex--;
        return SUCCESS;    
    } else {
        return STANDARD_ERROR;
    }
}


int StackIsEmpty(const struct Stack *stack){
    // initialize variable to hold 1.
    int placeholderempty = -1;
    // if item index is -1, it is an indication that the stack is empty
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
        // add one to currentItemIndex
        return stack->currentItemIndex+1;
    }
    // return size error if stack isn't initialized
    return SIZE_ERROR;
}

