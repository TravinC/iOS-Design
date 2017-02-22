//
//  factory.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "factory.h"

@implementation factory

+ (Device *)createPhone:(PhoneEnum)type{
    Device  *device;
    switch (type) {
        case IPhoneType:
            device = [[IPhone alloc] init];
            break;
        case XiaoMiType:
            device = [[ XiaoMi alloc] init];
            break;
        case HuaWeiType:
            device = [[HuaWei alloc] init];
            break;
        case NokiaType:
            device = [[Nokia alloc] init];
            break;
    }
    return device;
}

@end
