//
//  buildCarBuilder.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//


#import <Foundation/Foundation.h>

#import "buildCar.h"

@interface buildCarBuilder : NSObject

// 对目标Car的引用，该目标Car构建完成后将被返回给客户端。
@property (nonatomic, readonly, strong) buildCar *car;

- (buildCarBuilder *) buildNewCar;
- (buildCarBuilder *) buildNumWheels:(float)value;
- (buildCarBuilder *) buildNumDoors:(float)value;
- (buildCarBuilder *) buildVehicleChassis:(NSString*)str;
- (buildCarBuilder *) buildVehicleEngine:(NSString*)str;

@end
