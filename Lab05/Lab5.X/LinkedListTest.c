/* 
 * File:   LinkedListTest.c
 * Author: varamadem
 *
 * Created on October 25, 2022, 4:24 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "BOARD.h"
#include "LinkedList.h"
/*
 * 
 */
int main()
{
    BOARD_Init();
    
    
    ListItem *trialone = NULL;
    
    
    
    
    
    ListItem *trialtwo = NULL;
    
    
    // LinkedListRemove 
    printf("\nTest LinkedListRemove ");
    if (LinkedListRemove(trialone) == NULL) {
        
        
        
        printf("LinkedListRemove passed");
    } else {
        printf("LinkedListRemove failed");
    }
    
    
    
    
    // LinkedListSize 
    printf("\nTest LinkedListSize ");
    if (LinkedListSize(trialone) == 0) {
        printf("LinkedListSize passed");
    } else {
        printf("LinkedListSize failed");
    }
    
    
    
    
    // LinkedListGetFirst 
    printf("\nTest LinkedListGetFirst ");
    if (LinkedListGetFirst(trialone) == NULL) {
        
        
        
        printf("LinkedListGetFirst passed");
    } else {
        printf("LinkedListGetFirst failed");
    }
    
    
    
    
    // LinkedListGetLast 
    printf("\nTest LinkedListGetLast ");
    if (LinkedListGetLast(trialone) == NULL) {
        printf("LinkedListGetLast passed");
    } else {
        printf("LinkedListGetLast failed");
    }
    // LinkedListSwapData 
    printf("\nTest LinkedListSwapData ");
    if (LinkedListSwapData(trialone, trialtwo) == STANDARD_ERROR)
    {
        
        
        printf("LinkedListSwapData passed");
    } 
    else {
        printf("LinkedListSwapData failed");
    }
    
    
        
    
    
    
    
    
    
    
    char *pone = "1";
    char *ptwo = "2";
    char *pthree = "3";
    
    
    
    
    char *tsize = "size";
    
    // LinkedListNew
    printf("\nTest LinkedListNew");
    
    
    ListItem *first = LinkedListNew(pone);
    printf("\nlist one ");
    LinkedListPrint(first);
    ListItem *nfirst = LinkedListNew(NULL);
    
    
    
    printf("\nlist two ");
    LinkedListPrint(nfirst);
    
    // LinkedListCreateAfter 
    printf("\nTest LinkedListCreateAfter");
    ListItem *second = LinkedListCreateAfter(first, ptwo);
    
    // testing print
    LinkedListPrint(second);
    
    
    
    ListItem *third = LinkedListCreateAfter(second, pthree);
    LinkedListPrint(third);
    
    
    
    
    
    //LinkedListSize
    
    ListItem *sizeTest = LinkedListNew(tsize);
    
    printf("\nTest LinkedListSize");
    int i = LinkedListSize(sizeTest);
    printf("\nsize of second %d, ~1", i);
    
    
    
    int j = LinkedListSize(third);
    printf("\nsize of third %d, ~3", j);
    
    
    
    
    
    
    // ListRemove
    printf("\nTest ListRemove");
    LinkedListRemove(second);
    printf("\nRemoving second spot");
    
    
    printf("\nOutput ~ 1,3");
    LinkedListPrint(third);
    
    
    
    //ListRemove 
    LinkedListRemove(first);
    printf("\nremoving first spot");
    printf("\noutput ~ 3");
    
    
    
    LinkedListPrint(third);
    
    

    
    
    
    
 
    
    BOARD_End();
    while(1);
}
