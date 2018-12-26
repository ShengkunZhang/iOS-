//
//  ViewModel.m
//  ZSKCer
//
//  Created by zsk on 2018/12/24.
//  Copyright © 2018年 zsk. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel

+ (void)eat:(void (^)(void))block {
    block();
}

+ (void)drink:(myBlock)block {
    block();
}

+ (void)eatFood:(void (^)(NSString *))block {
    block(@"手抓饼");
}

+ (void)drinkWeter:(myBlockAr)block {
    block(@"农夫山泉");
}

+ (void)eatSelf:(id (^)(NSString *))block {
    id mySelf = block(@"Self");
    NSLog(@"--%@", mySelf);
}

+ (void)drinkSelf:(myBlockRe)block {
    id mySelf = block(@"Self");
    NSLog(@"--%@", mySelf);
}

- (instancetype)eat {
    NSLog(@"吃");
    return self;
}

- (instancetype)drink {
    NSLog(@"喝");
    return self;
}

- (ViewModel * (^)(NSString *str))eatFood {
    return ^(NSString *str) {
        NSLog(@"吃 %@", str);
        return self;
    };
}

- (ViewModel * (^)(NSString *))drinkWeter {
    return ^(NSString *str) {
        NSLog(@"喝 %@", str);
        return self;
    };
}

@end
