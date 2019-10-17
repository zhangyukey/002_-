//
//  ListNode.h
//  002_合并两个链表
//
//  Created by 张乾坤 on 2019/10/16.
//  Copyright © 2019 张乾坤. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListNode : NSObject



/**
 上一个节点
 */
@property (nonatomic,strong) ListNode *previous;

/**
 下一个节点
 */
@property (nonatomic,strong) ListNode *next;

/**
 当前节点
 */
@property (nonatomic,strong) id content;

/**
 int
 */
@property (nonatomic,assign) int value;

/**
 打印从当前节点开始之后所有的节点数据
 */
- (void)printAllListNode;









@end

NS_ASSUME_NONNULL_END
