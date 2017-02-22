//
//  buildCar.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <Foundation/Foundation.h>

@interface buildCar : NSObject


@property (nonatomic, copy) NSString *name;  // 汽车名字
@property (nonatomic, assign) float numWheels; // 车轮数
@property (nonatomic, assign) float numDoors; // 车门
@property (nonatomic, copy) NSString *vehicleChassis; // 汽车底盘
@property (nonatomic, copy) NSString *vehicleEngine;  // 汽车引擎



@end
