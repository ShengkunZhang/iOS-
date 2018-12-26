//
//  ViewController.m
//  ZSKCer
//
//  Created by zsk on 2018/12/24.
//  Copyright © 2018年 zsk. All rights reserved.
//

#import "ViewController.h"
#import "ViewModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     函数式
     */
    [ViewModel eat:^{
        NSLog(@"吃");
    }];
    
    [ViewModel drink:^{
        NSLog(@"喝");
    }];
    
    [ViewModel eatFood:^(NSString *str) {
        NSLog(@"吃 %@", str);
    }];
    
    [ViewModel drinkWeter:^(NSString *str) {
        NSLog(@"喝 %@", str);
    }];
    
    [ViewModel eatSelf:^id(NSString *str) {
        NSLog(@"吃 %@", str);
        return self;
    }];
    
    [ViewModel drinkSelf:^id(NSString *str) {
        NSLog(@"喝 %@", str);
        return self;
    }];
    
    /*
     链式
     */
    ViewModel *model = [ViewModel new];
    ViewModel *otherModel = model.eat.drink;
    // 是一个对象
    [model isEqual:otherModel] ? NSLog(@"相等") : NSLog(@"不相等");
    // 链式调用
    model.eat.drink.eatFood(@"肉夹馍").drinkWeter(@"可口可乐");
}

@end
