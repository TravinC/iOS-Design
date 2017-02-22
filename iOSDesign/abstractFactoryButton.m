//
//  abstractFactoryButton.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/18.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//  

#import "abstractFactoryButton.h"

#pragma mark Blue
@interface abstractFactoryButtonBlue: abstractFactoryButton

@end

@implementation abstractFactoryButtonBlue

- (void)isAButton {
    NSLog(@"这是个蓝色Button");
}

@end


#pragma mark Black
@interface abstractFactoryButtonBlack : abstractFactoryButton

@end

@implementation abstractFactoryButtonBlack

- (void)isAButton {
    NSLog(@"这是个黑色Button");
}

@end

#pragma mark Red
@interface abstractFactoryButtonRed : abstractFactoryButton

@end

@implementation abstractFactoryButtonRed

- (void)isAButton {
    NSLog(@"这是个红色Button");
}

@end



@implementation abstractFactoryButton

+ (instancetype)abstractFactoryButtonWithType:(abstractFactoryButtonType)abstractFactoryButtonType{
    
    switch (abstractFactoryButtonType) {
        case abstractFactoryButtonTypeButtonTypeBlue:{
            return [abstractFactoryButtonBlue new];
        }
            break;
        case abstractFactoryButtonTypeButtonTypeBlack:{
            return [abstractFactoryButtonBlack new];
        }
            break;
        case abstractFactoryButtonTypeButtonTypeRed:{
            return [abstractFactoryButtonRed new];
        }
            break;
    }
}

- (void)isAButton{
    NSLog(@"这是个Button");
}

@end
