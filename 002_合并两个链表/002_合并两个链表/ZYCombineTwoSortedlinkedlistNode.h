//
//  ZYCombineTwoSortedlinkedlistNode.h
//  002_合并两个链表
//
//  Created by 张乾坤 on 2019/10/16.
//  Copyright © 2019 张乾坤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListNode.h"
NS_ASSUME_NONNULL_BEGIN

@interface ZYCombineTwoSortedlinkedlistNode : UIView


/**
递归 合并两个排序的链表

@param numberOne 链表1
@param numbersTwo 链表2
@return 合并后的链表
*/

+ (ListNode *)mergeByRecursionWith:(NSArray *)numberOne numbersTwo:(NSArray *)numbersTwo;



/**
迭代 合并两个排序的链表

@param numberOne 链表1
@param numbersTwo 链表2
@return 合并后的链表
*/

+ (ListNode *)mergeByIterationWith:(NSArray *)numberOne numbersTwo:(NSArray *)numbersTwo;















@end

NS_ASSUME_NONNULL_END
