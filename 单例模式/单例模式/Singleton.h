//
//  Singleton.h
//  单例模式
//
//  Created by 房彤 on 2020/9/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (Singleton *)shareInstance;

@end

NS_ASSUME_NONNULL_END
