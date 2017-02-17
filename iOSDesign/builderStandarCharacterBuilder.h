//
//  builderStandarCharacterBuilder.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "builderCharacterBuilder.h"

@interface builderStandarCharacterBuilder : builderCharacterBuilder


// 子类builderStandarCharacterBuilder的作用在于定义了生成具有相关特征的真正角色逻辑
// 从抽象的builderCharacterBuilder父类中， 重载构造方法
- (builderCharacterBuilder *)buildStrength:(float)value;
- (builderCharacterBuilder *)buildStamina:(float)value;
- (builderCharacterBuilder *)buildIntelligence:(float)value;
- (builderCharacterBuilder *)buildAgility:(float)value;
- (builderCharacterBuilder *)buildAggressiveness:(float)value;

@end
