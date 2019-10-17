//
//  ListNode.m
//  002_合并两个链表
//
//  Created by 张乾坤 on 2019/10/16.
//  Copyright © 2019 张乾坤. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

- (int)value{
    
    if (_content != nil && [_content isKindOfClass:NSClassFromString(@"NSNumber")]) {
        
        return [(NSNumber *)_content intValue];
        
    }
    
    return 0;
    
    
    
    
}


- (void)printAllListNode{
    
    ListNode *curNode = self;
    
    while (curNode) {
        
        ListNode *preNode = curNode.previous;
        ListNode *nextNode = curNode.next;
        
        NSLog(@"curNode=%p, value=%d, preNode=%p, nextNode=%p",curNode, curNode.value, preNode, nextNode);
        
        
        curNode = curNode.next;
        
    }
    
    
    
}


















@end
