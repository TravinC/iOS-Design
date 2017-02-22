//
//  buildCarBuilder.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "buildCarBuilder.h"


@interface buildCarBuilder ()

@end

@implementation buildCarBuilder


- (buildCarBuilder *) buildNewCar{
    _car = [[buildCar alloc] init];
    return self;
}


- (buildCarBuilder *) buildNumWheels:(float)value{
    _car.numWheels = value;
    return self;
}


- (buildCarBuilder *) buildNumDoors:(float)value{

    _car.numDoors = value;
    return self;
}


- (buildCarBuilder *) buildVehicleChassis:(NSString*)str{

    _car.vehicleChassis = str;
    return self;
}


- (buildCarBuilder *) buildVehicleEngine:(NSString*)str{

    _car.vehicleEngine = str;
    return self;
}



@end
