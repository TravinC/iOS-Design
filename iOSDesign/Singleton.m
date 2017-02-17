//
//  Singleton.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "Singleton.h"

//单例类的静态实例对象，因对象需要唯一性，故只能是static类型
static Singleton *_sharedSingleton = nil;

@interface Singleton ()

@property(nonatomic,strong) NSString *name;

@end

@implementation Singleton

+ (Singleton *)sharedInstance {
    
    //NSLog(@"/n=====调用了sharedInstance");
    /** 单例模式对外的唯一接口，用到的dispatch_once函数在一个应用程序内只会执行一次，且dispatch_once能确保线程安全 */
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if(_sharedSingleton == nil)
        {
            _sharedSingleton = [[self alloc] init];
        }
    });
    return _sharedSingleton;
}

/**覆盖该方法主要确保当用户通过[[Singleton alloc] init]创建对象时对象的唯一性，alloc方法会调用该方法，只不过zone参数默认为nil，因该类覆盖了allocWithZone方法，所以只能通过其父类分配内存，即[super allocWithZone:zone]
 28
 */
+ (id)allocWithZone:(struct _NSZone *)zone
{
    // 这里分配了内存块
    //NSLog(@"\n=====调用了allocWithZone:");
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        if(_sharedSingleton == nil)
        {
            _sharedSingleton = [super allocWithZone:zone];
        }
    });
    return _sharedSingleton;
}

- (instancetype)init {
    
    //NSLog(@"\n=====调用了init:");
    self = [super init];
    if(self){
        // 初始化属性
        self.name = @"Singleton";
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    
    //NSLog(@"\n=====调用了copyWithZone:");
    return self;
}

//覆盖该方法主要确保当用户通过mutableCopy方法产生对象时对象的唯一性
- (id)mutableCopy {
    
    //NSLog(@"\n=====调用了mutableCopy:");
    return self;
}

#pragma mark 以下几个方法， ARC模式下直接忽略

/* 重载此方法， 以确保它们什么都不做
 
- (id)retain{
    return self;
}

- (NSUInteger)retainCount{
    return NSUIntegerMax;
}

- (void)release{
    // 啥也不做
}
 
- (id)autorelease{
    return self;
}
 
*/




@end
