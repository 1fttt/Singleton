//
//  ViewController.m
//  单例模式
//
//  Created by 房彤 on 2020/9/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Singleton *a = [Singleton shareInstance];
    Singleton *b = [Singleton shareInstance];
    Singleton *c = [[Singleton alloc] init];
    Singleton *d = [a copy];
    Singleton *e = [b mutableCopy];
    NSLog(@"%@, %@, %@, %@, %@", a, b, c, d, e);
    
}


@end
