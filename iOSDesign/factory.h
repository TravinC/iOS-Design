//
//  factory.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <Foundation/Foundation.h>
#import "Device.h"

typedef NS_ENUM(NSInteger, PhoneEnum) {
    IPhoneType,
    XiaoMiType,
    HuaWeiType,
    NokiaType
};

@interface factory : NSObject

/**
 *  根据标签创建手机
 *
 *  @param type 手机标签
 *
 *  @return 对应的手机
 */
+ (Device *)createPhone:(PhoneEnum)type;

@end
