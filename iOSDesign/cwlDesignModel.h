//
//  cwlDesignModel.h
//  iOSDesign
//
//  Created by 崔文龙 on 17/2/22.
//  Copyright © 2017年 cwl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface cwlDesignModel : NSObject

@property (nonatomic, strong) NSArray                   *titleList;
@property (nonatomic, strong) NSArray                   *designList;

+ (instancetype)cdlModelWithStander;

@end
