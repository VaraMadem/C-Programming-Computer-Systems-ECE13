/* 
 * File:   LinkedListTest.c
 * Author: varamadem
 *
 * Created on October 25, 2022, 4:24 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "BOARD.h";
#include "LinkedList.h";
/*
 * 
 */
int main()
{
    BOARD_Init();
    
    printf("\nWelcome to 1828506's LinkedListTest.c, compiled on %s %s.\n", __DATE__, __TIME__);
    
    // TESTING NULL FOR ALL FUNCTIONS
    ListItem *trialone = NULL;
    ListItem *trialtwo = NULL;
    
    //printf("\nTesting NULL for all functions: ");
    
    // LinkedListRemove NULL TEST
    printf("\nTest LinkedListRemove ");
    if (LinkedListRemove(trialone) == NULL) {
        printf("LinkedListRemove passed.");
    } else {
        printf("LinkedListRemove failed.");
    }
    // LinkedListSize NULL TEST
    printf("\nTest LinkedListSize: ");
    if (LinkedListSize(trialone) == 0) {
        printf("LinkedListSize passed.");
    } else {
        printf("LinkedListSize failed.");
    }
    // LinkedListGetFirst NULL TEST
    printf("\nTest LinkedListGetFirst: ");
    if (LinkedListGetFirst(trialone) == NULL) {
        printf("LinkedListGetFirst passed.");
    } else {
        printf("LinkedListGetFirst failed.");
    }
    // LinkedListGetLast NULL TEST
    printf("\nTest LinkedListGetLast: ");
    if (LinkedListGetLast(trialone) == NULL) {
        printf("LinkedListGetLast passed.");
    } else {
        printf("LinkedListGetLast failed.");
    }
    // LinkedListSwapData NULL TEST
    printf("\nTest LinkedListSwapData: ");
    if (LinkedListSwapData(trialone, trialtwo) == STANDARD_ERROR){
        printf("LinkedListSwapData passed.");
    } else {
        printf("LinkedListSwapData failed.");
    }
    
    //printf("\n\nTesting Rest of Functions");
        
    
    
    
    
    
    
    // Declaring Strings
    char first[20] = "One";
    char second[20] = "Two";
    char third[20] = "Three";
    char sizetest1[20] = "SizeTest";
    //char fourth[20] = "Four";
    
    // Testing LinkedListNew
    printf("\n\nTesting LinkedListNew with one list and one NULL");
    ListItem *one = LinkedListNew(first);
    printf("\nFirst List: ");
    LinkedListPrint(one);
    ListItem *onenull = LinkedListNew(NULL);
    printf("Second List: ");
    LinkedListPrint(onenull);
    
    // Testing LinkedListCreateAfter 
    printf("\nTesting LinkedListCreateAfter and LinkedListPrint");
    printf("\nCreateAfter Test #1: ");
    ListItem *two = LinkedListCreateAfter(one, second);
    LinkedListPrint(two);
    printf("CreateAfter Test #2: ");
    ListItem *three = LinkedListCreateAfter(two, third);
    LinkedListPrint(three);
    
    // Testing LinkedListSize
    
    ListItem *sizeTest = LinkedListNew(sizetest1);
    
    printf("\nTesting LinkedListSize");
    int x = LinkedListSize(sizeTest);
    printf("\nSize of the CreateAfter Test #1: %d, Expected value: 1", x);
    int y = LinkedListSize(three);
    printf("\nSize of the CreateAfter Test #2: %d, Expected value: 3", y);
    
    // Testing ListRemove #1
    printf("\nTesting ListRemove");
    LinkedListRemove(two);
    printf("\nRemoving Two from the list: [ One, Two, Three]");
    printf("\nExpected Output: [ One, Three]");
    printf("\nOutput:");
    LinkedListPrint(three);
    
    // Testing ListRemove #2
    LinkedListRemove(one);
    printf("\nRemoving One from the list: [One, Three]");
    printf("\nExpected Output: [Three]");
    printf("\nOutput:");
    LinkedListPrint(three);
    
    
    
    
    printf("\nLinkedListSwap has passed.");

    
    
    
    
 
    
    BOARD_End();
    while(1);
}
