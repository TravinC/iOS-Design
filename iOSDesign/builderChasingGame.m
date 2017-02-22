//
//  builderChasingGame.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

/*
 builderChasingGame有两个方法， 每个方法使用builderCharacterBuilder的实例，构建带有一套预定特征因子的特定类型的角色
 好明显， 通过不同的生成器， 不同的值， 可以生成不同的character对象，  从而打造两个完全不一样的角色。
 */

#import "builderChasingGame.h"

@implementation builderChasingGame

- (builderCharacter *)createPlayer:(builderCharacterBuilder *)builder {
    // 1，利用角色生成器生成角色
    [builder buildNewCharacter];
    // 2，生成各种属性
    [builder buildStrength:50.0];
    [builder buildStamina:25.0];
    [builder buildIntelligence:75.0];
    [builder buildAgility:65.0];
    [builder buildAggressiveness:35.0];
    
    // 3，返回已经生成好的角色
    return [builder character];
}

- (builderCharacter *)createEnemy:(builderCharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:80.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:35.0];
    [builder buildAgility:25.0];
    [builder buildAggressiveness:95.0];
    
    return [builder character];
}


@end
