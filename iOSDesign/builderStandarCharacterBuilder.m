//
//  builderStandarCharacterBuilder.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

/*
 builderStandarCharacterBuilder 是builderCharacterBuilder的子类， 当然子类可以根据业务需求分类创建
 builderStandarCharacterBuilder创建的目的， 主要是定义生成具有各种相关特征的真正角色的逻辑。
 // 下面重载的实现方法，通过更新，初始值，控制protection与power， 而protection与power 只有在这里才变化。
 */

#import "builderStandarCharacterBuilder.h"

@implementation builderStandarCharacterBuilder

// 各方法里面的具体操作， 更新的值， 都是业务要求， 在具体的业务中， 可以自己按照具体的业务要求实现
- (builderCharacterBuilder *)buildStrength:(float)value {
    // 更新角色的防御值（业务）
    self.character.protection *= value;
    // 更新角色的攻击值（业务）
    self.character.power *= value;
    
    // 最后设定力量值并返回此生成器
    return [super buildStrength:value];
}

- (builderCharacterBuilder *)buildStamina:(float)value {
    // 更新角色的防御值（业务）
    self.character.protection *= value;
    // 更新角色的攻击值（业务）
    self.character.power *= value;
    
    // 最后设定男离职并返回此生成器
    return [super buildStamina:value];
}

- (builderCharacterBuilder *)buildIntelligence:(float)value {
    // 更新角色的防御值（业务）
    self.character.protection *= value;
    // 更新角色的攻击值（业务）
    self.character.power /= value;
    
    // 最后设定智力值并返回生成器
    return [super buildIntelligence:value];
}

- (builderCharacterBuilder *)buildAgility:(float)value {
    // 更新角色的防御值（业务）
    self.character.protection *= value;
    // 更新角色的攻击值（业务）
    self.character.power /= value;
    
    // 最后设定敏捷值并返回此生成器
    return [super buildAgility:value];
}

- (builderCharacterBuilder *)buildAggressiveness:(float)value {
    // 更新角色的防御值（业务）
    self.character.protection /= value;
    // 更新角色的攻击值（业务）
    self.character.power *= value;
    
    // 最后设定攻击力值并返回此生成器
    return [super buildAggressiveness:value];
}

@end
