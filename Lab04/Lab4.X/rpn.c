/* 
 * File:   rpn.c
 * Author: varamadem
 *
 * Created on October 18, 2022, 4:54 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "BOARD.h"
#include "rpn.h"
#include "stack.h"
/*
 * 
 */
#define ZERO_CONSTANT 0



/*

int check(char* token) {
    // declare variables
    int x;  
    
    // run token through s t r l e n and sees if token has addition, subtraction, multiplication, division
    if ( strlen(token) == 1) {
        if (token[0] == '+' || token[0] == '-' || token[0] == '*' || token[0] == '/')
            return TRUE;
    }
    for (x = 0; x < strlen(token); x++) {

        if (token[x] == '-') {
            if (!isdigit(token[x + 1]))
                return FALSE;
        } else if (token[x] == '.') {
            if (!isdigit(token[x + 1]))
                return FALSE;
        } else if (!isdigit(token[x])) {

            return FALSE;
        }
    }
    return TRUE;
}

 */



int RPN_Evaluate(char * rpn_string, double * result) {

    
    
    
    
    
    // Declare Variables
    char* token;
    struct Stack stack = {};   // create empty Stack structure
    double temp, operator1, operator2;    // declare operator and temp
    
    
    token = strtok(rpn_string, " ");
    StackInit(&stack);
    
    
   
    // 
    if (token == NULL){
        return RPN_ERROR_TOO_FEW_ITEMS_REMAIN;
    }
    
    
    
    
    while (token != NULL) {
        if (token == "-"){
            if (StackGetSize(&stack)<2){
                return RPN_ERROR_STACK_UNDERFLOW;
            }
           StackPop(&stack, &operator1);
           StackPop(&stack, &operator2);
           StackPush(&stack, (operator2 - operator1));
            
           }
        }
        
        

       // if (!check(token))                   //called check
            //return RPN_ERROR_INVALID_TOKEN;
        
      //  if( strcmp(token[0)== "+"){
        
      //     return TRUE;
        
        
        // Subtraction
        if (strcmp(token, "-") == 0) {
            if (StackGetSize(&stack) < 2){
                return RPN_ERROR_STACK_UNDERFLOW;
            }
            StackPop(&stack, &operator1);
            StackPop(&stack, &operator2);
            StackPush(&stack, (operator2 - operator1));
        
        // Addition    
        } else if (strcmp(token, "+") == 0) {
            if (StackGetSize(&stack) < 2) {
                return RPN_ERROR_STACK_UNDERFLOW;
            }
            StackPop(&stack, &operator1);
            StackPop(&stack, &operator2);
            StackPush(&stack, (operator1 + operator2));
        
        // Multiplication 
        } else if (strcmp(token, "*") == 0) {
            if (StackGetSize(&stack) < 2){
                return RPN_ERROR_STACK_UNDERFLOW;
            }                   
            StackPop(&stack, &operator1);
            StackPop(&stack, &operator2);
            StackPush(&stack, (operator1 * operator2));
        
        // Division    
        } else if (strcmp(token, "/") == 0) {
            if (StackGetSize(&stack) < 2)
                return RPN_ERROR_STACK_UNDERFLOW;
            StackPop(&stack, &operator1);
            StackPop(&stack, &operator2);
            if (operator1 == 0)
                return RPN_ERROR_DIVIDE_BY_ZERO;
            StackPush(&stack, operator2 / operator1);
        
        //  Defining Stack Overflow Error  
        } else {
            if (StackGetSize(&stack) == STACK_SIZE)
                return RPN_ERROR_STACK_OVERFLOW;
            temp = atof(token);
            StackPush(&stack, temp);
        }
        token = strtok(NULL, " ");        
    }
    
    // ERROR for too few items and items remain. If stack is greater or less than 1
    if (StackGetSize(&stack) < 1)
        return RPN_ERROR_TOO_FEW_ITEMS_REMAIN;
    else if (StackGetSize(&stack) > 1)
        return RPN_ERROR_TOO_MANY_ITEMS_REMAIN;
    
    
    // Pop result, and return NO ERROR message
    StackPop(&stack, result);
    return RPN_NO_ERROR;
}

int ProcessBackspaces(char *rpn_sentence);