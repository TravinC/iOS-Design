//
//  prototypePeople.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/7/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//



#import "prototypePeople.h"

@implementation prototypePeople

- (id)copyWithZone:(NSZone *)zone {
    
    prototypePeople *copy = [[self class] allocWithZone:zone];
    
    [self parametersCopyOperationWithprototypePeopleObject:copy];
    
    return copy;
}

- (void)parametersCopyOperationWithprototypePeopleObject:(prototypePeople *)baseCopyObject{

}

@end
