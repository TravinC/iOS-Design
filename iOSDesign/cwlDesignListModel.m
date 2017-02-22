//
//  cwlDesignListModel.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "cwlDesignListModel.h"

@implementation cwlDesignListModel

+ (instancetype)cdlModelWithName:(NSString *)name object:(id)object {
    
    cwlDesignListModel *cdlModel  = [[[self class] alloc] init];
    cdlModel.name   = name;
    cdlModel.object = object;
    
    return cdlModel;
}

@end
