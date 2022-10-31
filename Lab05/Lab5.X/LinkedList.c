/* 
 * File:   LinkedList.c
 * Author: varamadem
 *
 * Created on October 25, 2022, 4:23 PM
 */

#include <stdio.h>
#include <stdlib.h>

#include "LinkedList.h"

#include "BOARD.h"

ListItem *LinkedListNew(char *data){
    ListItem *i = malloc(sizeof(ListItem));
    // Checks for NULL and returns NULL
    if (i == NULL) {
        return NULL;
    } else {
        i->nextItem = i->previousItem = NULL;
        i->data = data;
    } 
    return i;
}





ListItem *LinkedListCreateAfter(ListItem *item, char *data){
    
    // Declare Temp Storage
    if(item == NULL){
        return NULL;
    }
    
    struct ListItem* i = LinkedListNew(data);
    i->data = data;
    i->nextItem = item-> nextItem;
    item->nextItem = i;
    i->previousItem = item;
    
    if(i->nextItem !=NULL){
        i->nextItem->previousItem= i;
    }
    return i;
    
   
}








char *LinkedListRemove(ListItem *item){
    // Return NULL if item is NULL
    if (item == NULL) {
        return NULL;
    }
    // Declare list remove pointer to data 
    char *i = item->data;
    
    // Declare pointers for if statements
    ListItem *n = item->nextItem;
    ListItem *before = item ->previousItem;
       
    if (n == NULL && before == NULL){
        
    } else if (n == NULL){
        before->nextItem = NULL;
    } else if (before == NULL){
        n->previousItem = NULL;
    } else {
        item->previousItem->nextItem = n;
        item->nextItem->previousItem = before;
                
    }
    free(&(*item));
    return i;
}





int LinkedListSize(ListItem *list){
    
    int track =0;
    if(list == NULL){
        return track;
    }
    
    track= track+1;
    ListItem*a = list;
    while(a->nextItem !=NULL){
        track= track+1;
        a = a->nextItem;
    }
    
    ListItem *size = list;
    while(size->previousItem != NULL){
        track = track +1;
        size = size-> previousItem;
    }
    
    return track;
    
    
}





ListItem *LinkedListGetFirst(ListItem *list){
    // if list is NULL return NULL
    if (list == NULL) {
        return NULL;
    }
    while (list->previousItem) {
        list = list->previousItem;
    }
    return list;
}




ListItem *LinkedListGetLast(ListItem *list) {
    if (list == NULL) {
        return NULL;
    }
        
    ListItem *last = list;
    
    
    while (last->nextItem !=NULL){
        last = last->nextItem;
    }
    
    return last;
  
}






int LinkedListSwapData(ListItem *firstItem, ListItem *secondItem){
    // If first or second item is null, return standard error
    if (firstItem == NULL || secondItem == NULL){
       return STANDARD_ERROR;
    }
    char *i = firstItem->data;
    firstItem->data = secondItem->data;
    secondItem->data = i;
    
    return SUCCESS;
}






int LinkedListPrint(ListItem *list){
    ListItem *spot = list;
    if(spot == NULL){
        return STANDARD_ERROR;
    }
    while(spot !=NULL){
        printf("%s", spot->data);
        spot= spot->nextItem;
    }
    return SUCCESS;
}


