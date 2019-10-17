//
//  ZYCombineTwoSortedlinkedlistNode.m
//  002_合并两个链表
//
//  Created by 张乾坤 on 2019/10/16.
//  Copyright © 2019 张乾坤. All rights reserved.
//

#import "ZYCombineTwoSortedlinkedlistNode.h"
#import "LinkedArray.h"
@implementation ZYCombineTwoSortedlinkedlistNode



+ (ListNode *)mergeByRecursionWith:(NSArray *)numberOne numbersTwo:(NSArray *)numbersTwo{
   
    LinkedArray *listOne = [[LinkedArray alloc]initLiknedArrayWithNunbers:numberOne];
    ListNode *listNodeOne = [listOne getFirstListNode];
    
    LinkedArray *listTwo = [[LinkedArray alloc]initLiknedArrayWithNunbers:numbersTwo];
    ListNode *listNodeTwo = [listTwo getFirstListNode];
    
    return [self mergeByRecursionWith:listNodeOne listNodeTwo:listNodeTwo];
    
}


+ (ListNode *)mergeByRecursionWith:(ListNode *)listNodeOne listNodeTwo:(ListNode *)listNodeTwo{
    
    if (listNodeOne == nil) return listNodeTwo;
    if (listNodeTwo == nil) return listNodeOne;
    
    if (listNodeOne.value <= listNodeTwo.value) {
        
        listNodeOne.next = [self mergeByRecursionWith:listNodeOne.next listNodeTwo:listNodeTwo];
        return listNodeOne;
        
        
    }else{
        
        listNodeTwo.next = [self mergeByRecursionWith:listNodeOne listNodeTwo:listNodeTwo.next];
        
        
        return listNodeTwo;
        
    }
    
    
    
    
}





+ (ListNode *)mergeByIterationWith:(NSArray *)numberOne numbersTwo:(NSArray *)numbersTwo{
    
    LinkedArray *list1 = [[LinkedArray alloc]initLiknedArrayWithNunbers:numberOne];
    ListNode *listNode1 = [list1 getFirstListNode];
    
    LinkedArray *list2 = [[LinkedArray alloc]initLiknedArrayWithNunbers:numbersTwo];
    ListNode *listNode2 = [list2 getFirstListNode];
    
    
    ListNode *headNode = [ListNode new];
    ListNode *curNode = headNode;
    
    while (listNode1 != nil && listNode2 != nil) {
           if (listNode1.value <= listNode2.value) {
               curNode.next = listNode1;
               listNode1 = listNode1.next;
           } else {
               curNode.next = listNode2;
               listNode2 = listNode2.next;
           }
           curNode = curNode.next;
       }
       if (listNode1 != nil) {
           curNode.next = listNode1;
       }
       if (listNode2 != nil) {
           curNode.next = listNode2;
       }
       
       return headNode.next;
    
    
    
}























@end
