//
//  buildCar.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "buildCar.h"

@implementation buildCar

-(instancetype)init{
    
    if (self = [super init]) {
        _name = @"不知名";
        _numWheels = 0;
        _numDoors = 0;
        _vehicleChassis = @"不知名";
        _vehicleEngine= @"不知名";
    }
    return self;
}

@end
