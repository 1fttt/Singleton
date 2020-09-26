//
//  Singleton.m
//  单例模式
//
//  Created by 房彤 on 2020/9/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *singleton = nil;

+ (Singleton *)shareInstance {
    //static Singleton *singleton = nil;
    static dispatch_once_t oncetoken;
    //dispatch_once 主要是根据onceToken 的值来决定怎么去执行代码。
    //1.当onceToken=0时，线程执行dispatch_once的block中代码
    //2.当onceToken=-1时，线程跳过dispatch_once的block中代码不执行
    //3.当onceToken为其他值时，线程被阻塞，等待onceToken值改变
    dispatch_once(&oncetoken, ^{
        singleton = [[super allocWithZone:nil] init];
    });
//    if(singleton == nil) {
//        singleton = [[super allocWithZone:nil] init];
//    }
    return singleton;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    //return [Singleton shareInstance];
    return singleton;
}

- (id)copyWithZone:(NSZone *)zone{
    //return [Singleton shareInstance];
    return singleton;
}

- (id)mutableCopyWithZone:(NSZone *)zone{
    //return [Singleton shareInstance];
    return singleton;
}

@end
