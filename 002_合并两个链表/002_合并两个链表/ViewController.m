//
//  ViewController.m
//  002_合并两个链表
//
//  Created by 张乾坤 on 2019/10/16.
//  Copyright © 2019 张乾坤. All rights reserved.
//

#import "ViewController.h"
#import "ListNode.h"
#import "ZYCombineTwoSortedlinkedlistNode.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *arr1 = @[@1,@3,@5];
    NSArray *arr2 = @[@2,@4,@6];
    
    //递归
    ListNode *listNode1 = [ZYCombineTwoSortedlinkedlistNode mergeByRecursionWith:arr1 numbersTwo:arr2];
    
    [listNode1 printAllListNode];
    
    //迭代
    ListNode *listNode2 = [ZYCombineTwoSortedlinkedlistNode mergeByIterationWith:arr1 numbersTwo:arr2];
    
    [listNode2 printAllListNode];
    
   
    
    
    
    
   
}



























































@end
