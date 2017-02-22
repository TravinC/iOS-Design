//
//  buildAssemblyCar.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "buildAssemblyCar.h"

@implementation buildAssemblyCar

- (buildCar *)assemblyBenCar:(buildCarBuilder *)carBuilder{
    
    // 1，利用角色生成器生成角色
    [carBuilder buildNewCar];
    // 2，生成各种属性
    [carBuilder buildNumDoors:4];
    [carBuilder buildNumWheels:4];
    [carBuilder buildVehicleEngine:@"奔驰"];
    [carBuilder buildVehicleChassis:@"奔驰"];
    
    // 3，返回已经生成好的角色
    return [carBuilder car];
    
}

- (buildCar *)assemblyOtherCar:(buildCarBuilder *)carBuilder{

    // 1，利用角色生成器生成角色
    [carBuilder buildNewCar];
    // 2，生成各种属性
    [carBuilder buildNumDoors:2];
    [carBuilder buildNumWheels:0];
    [carBuilder buildVehicleEngine:@"摩托车"];
    [carBuilder buildVehicleChassis:@"摩托车"];
    
    // 3，返回已经生成好的角色
    return [carBuilder car];
}

//+ (buildCarBuilder *)assemblyCarOfNotDoors:(buildCarBuilder *)carBuilder{
//
//    [carBuilder buildVehicleDoors];
//    [carBuilder buildVehicleChassis];
//    [carBuilder buildVehicleEngine];
//    [carBuilder buildVehicleWheels];
//    return carBuilder;
//}

@end
