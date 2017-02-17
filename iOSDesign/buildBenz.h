//
//  buildBenz.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "buildCarBuilder.h"

@interface buildBenz : buildCarBuilder

// 重载父类的方法，添加自己的业务
- (buildCarBuilder *) buildNumWheels:(float)value;
- (buildCarBuilder *) buildNumDoors:(float)value;
- (buildCarBuilder *) buildVehicleChassis:(NSString*)str;
- (buildCarBuilder *) buildVehicleEngine:(NSString*)str;

@end
