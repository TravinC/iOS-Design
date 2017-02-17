//
//  builderCharacterBuilder.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <Foundation/Foundation.h>

#import "builderCharacter.h"

@interface builderCharacterBuilder : NSObject

// 对目标Character的引用，该目标Character构建完成后将被返回给客户端。
@property (nonatomic, readonly, strong) builderCharacter *character;

// 有几个构建角色的方法，构建角色具有的特定属性
// 而这个Builder的主要作用， 是抽象了character的默认行为，把一些列默认值，赋值给character
- (builderCharacterBuilder *) buildNewCharacter;
- (builderCharacterBuilder *) buildStrength:(float)value;
- (builderCharacterBuilder *) buildStamina:(float)value;
- (builderCharacterBuilder *) buildIntelligence:(float)value;
- (builderCharacterBuilder *) buildAgility:(float)value;
- (builderCharacterBuilder *) buildAggressiveness:(float)value;


@end
