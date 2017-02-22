//
//  Device.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

/*
 该类中我将所有工厂类整合起来
 简单工厂模式的核心是工厂类，该类中含有必要的判断逻辑， Device类就是工厂类， 而IPhone XiaoMi HuaWe Nokia 等就是具体的必要的子类。
 这些子类中包含了必要的判断逻辑，当每一个子类都实现后。 在使用的过程中， 可以决定在什么时候创建哪一个产品类的实例，客户端（也就是在factoryDetailViewController这个类中使用的时候）可以免除直接创建产品对象的责任， 而仅仅负责“消费”产品。
 简单工厂模式实现了对责任（必要的判断逻辑）的分割。
 */

#import <Foundation/Foundation.h>

@interface Device : NSObject

- (void)call;

- (void)SendMessage;

@end

@interface IPhone : Device

@end

@interface XiaoMi : Device

@end

@interface HuaWei : Device

@end

@interface Nokia : Device

@end
