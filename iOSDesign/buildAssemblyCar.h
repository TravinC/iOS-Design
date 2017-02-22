//
//  buildAssemblyCar.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <Foundation/Foundation.h>
#import "buildCarBuilder.h"

@interface buildAssemblyCar : NSObject

- (buildCar *)assemblyBenCar:(buildCarBuilder *)carBuilder;

- (buildCar *)assemblyOtherCar:(buildCarBuilder *)carBuilder;

@end
