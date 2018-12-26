//
//  ViewModel.h
//  ZSKCer
//
//  Created by zsk on 2018/12/24.
//  Copyright © 2018年 zsk. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^myBlock)(void);
typedef void(^myBlockAr)(NSString *str);
typedef id(^myBlockRe)(NSString *str);

@interface ViewModel : NSObject

/**
 block作为函数式编程的参数
 */

+ (void)eat:(void(^)(void))block;
+ (void)drink:(myBlock)block;

+ (void)eatFood:(void(^)(NSString *str))block;
+ (void)drinkWeter:(myBlockAr)block;

+ (void)eatSelf:(id(^)(NSString *str))block;
+ (void)drinkSelf:(myBlockRe)block;

/**
 链式编程之block的使用
 */
- (instancetype)eat;
- (instancetype)drink;

- (ViewModel *(^)(NSString *str))eatFood;
- (ViewModel *(^)(NSString *str))drinkWeter;

@end
