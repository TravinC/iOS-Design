//
//  abstractFactoryButton.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/18.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, abstractFactoryButtonType) {
    abstractFactoryButtonTypeButtonTypeBlue = 0,
    abstractFactoryButtonTypeButtonTypeBlack ,
    abstractFactoryButtonTypeButtonTypeRed,
};



@interface abstractFactoryButton : UIButton

+ (instancetype)abstractFactoryButtonWithType:(abstractFactoryButtonType)abstractFactoryButtonType;

- (void)isAButton;

@end
