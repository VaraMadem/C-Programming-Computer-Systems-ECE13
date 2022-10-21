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

int RPN_Evaluate(char * rpn_string, double * result) {


    double x, spot1, spot2;





    char* token;
    token = strtok(rpn_string, " ");

    struct Stack stack = {};
    StackInit(&stack);




    if (token == NULL) {
        return RPN_ERROR_TOO_FEW_ITEMS_REMAIN;
    }
    

    else if (StackGetSize(&stack) > STACK_SIZE) {
        return RPN_ERROR_TOO_MANY_ITEMS_REMAIN;
    }



    while (token != NULL) {



        if (strcmp(token, "-") != 0 || strcmp(token, "+") != 0 || strcmp(token, "*") != 0 || strcmp(token, "/") != 0) {
            return RPN_ERROR_INVALID_TOKEN;
        }

        if (strcmp(token, "-") == 0) {
            if (StackGetSize(&stack) < 2) {
                return RPN_ERROR_STACK_UNDERFLOW;
            }
            StackPop(&stack, &spot1);
            StackPop(&stack, &spot2);
            StackPush(&stack, (spot2 - spot1));

        }

        else if (strcmp(token, "+") == 0) {
            if (StackGetSize(&stack) < 2) {
                return RPN_ERROR_STACK_UNDERFLOW;
            }

            StackPop(&stack, &spot1);
            StackPop(&stack, &spot2);
            StackPush(&stack, (spot1 + spot2));

        }
        else if (strcmp(token, "*") == 0) {
            if (StackGetSize(&stack) < 2) {
                return RPN_ERROR_STACK_UNDERFLOW;
            }
            StackPop(&stack, &spot1);
            StackPop(&stack, &spot2);
            StackPush(&stack, (spot1 * spot2));

        }
        else if (strcmp(token, "/") == 0) {
            if (StackGetSize(&stack) < 2)
                return RPN_ERROR_STACK_UNDERFLOW;
            StackPop(&stack, &spot1);
            StackPop(&stack, &spot2);
            if (spot1 == 0)
                return RPN_ERROR_DIVIDE_BY_ZERO;
            StackPush(&stack, spot2 / spot1);

        }
        else {
            if (StackGetSize(&stack) == STACK_SIZE)
                return RPN_ERROR_STACK_OVERFLOW;
            x = atof(token);
            StackPush(&stack, x);
        }
        token = strtok(NULL, " ");



    }

    StackPop(&stack, result);
    return RPN_NO_ERROR;
}



 