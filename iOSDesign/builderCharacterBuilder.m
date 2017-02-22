//
//  builderCharacterBuilder.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

/*
  builderCharacterBuilder 的实例有个对目标builderCharacter的引用，该目标builderCharacter构建完成后将被返回给客户端，
  builderCharacterBuilder有几个构建角色的方法， 这些值分别影响protection（防御） 与 power （攻击）
  所以builderCharacterBuilder决定了默认的行为，而builderCharacterBuilder 正是将这些值设定给builderCharacter。
 */

#import "builderCharacterBuilder.h"

@implementation builderCharacterBuilder


- (builderCharacterBuilder *)buildNewCharacter {
    _character = [[builderCharacter alloc] init];
    return self;
}

- (builderCharacterBuilder *)buildStrength:(float)value {
    _character.strength = value;
    return self;
}

- (builderCharacterBuilder *)buildStamina:(float)value {
    _character.stamina = value;
    return self;
}

- (builderCharacterBuilder *)buildIntelligence:(float)value {
    _character.intelligence = value;
    return self;
}

- (builderCharacterBuilder *)buildAgility:(float)value {
    _character.agility = value;
    return self;
}

- (builderCharacterBuilder *)buildAggressiveness:(float)value {
    _character.aggressiveness = value;
    return self;
}

@end
