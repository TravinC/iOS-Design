//
//  buildBenz.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "buildBenz.h"

@interface buildBenz ()

@property (nonatomic, assign) float isBenz;

@end

@implementation buildBenz

// 业务 ： 假设 4个轮，4个门 ， 引擎和底盘名字是奔驰，  名字就为奔驰， 就是汽车
// 业务 ： 假设 2个轮，0个门 ， 就是摩托车

- (buildCarBuilder *) buildNumWheels:(float)value{

    if (value == 4) {
        _isBenz = YES;
    } else {
        _isBenz = NO;
    }
    [self buildCarName];
    return [super buildNumWheels:value];
}

- (buildCarBuilder *) buildNumDoors:(float)value{

    if (value == 4) {
        _isBenz = YES;
    } else {
        _isBenz = NO;
    }
    [self buildCarName];
    return [super buildNumDoors:value];
    
}

- (buildCarBuilder *) buildVehicleChassis:(NSString*)str{

    if ([str isEqualToString:@"奔驰"]) {
        _isBenz = YES;
    }else{
        _isBenz = NO;
    }
    [self buildCarName];
    return [super buildVehicleChassis:str];
}

- (buildCarBuilder *) buildVehicleEngine:(NSString*)str{

    if ([str isEqualToString:@"奔驰"]) {
        _isBenz = YES;
    }else{
        _isBenz = NO;
    }
    [self buildCarName];
    return [super buildVehicleEngine:str];
}



- (void)buildCarName{

    if (_isBenz) {
        self.car.name = @"好吧，你是奔驰车";
    }else{
        self.car.name = @"你TM这是什么车。。。。";
    }
    
}


@end
