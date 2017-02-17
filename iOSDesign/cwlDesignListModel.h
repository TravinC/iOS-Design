//
//  cwlDesignListModel.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import <Foundation/Foundation.h>

@interface cwlDesignListModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) id        object;

+ (instancetype)cdlModelWithName:(NSString *)name object:(id)object;

@end
