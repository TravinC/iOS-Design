//
//  builderCharacter.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//  


/*
 builderCharacter定义所有类型角色共有的一套特征，包括防御、攻击、力量、耐力、智力、敏捷和攻击力。Character的实现仅仅是定义了一个init方法和几个属性的同步，代码如下：
 */

#import "builderCharacter.h"

@implementation builderCharacter

- (instancetype)init {
    if (self = [super init]) {
        _protection = 1.0;
        _power = 1.0;
        _strength = 1.0;
        _stamina = 1.0;
        _intelligence = 1.0;
        _agility = 1.0;
        _aggressiveness = 1.0;
    }
    return self;
}


@end
