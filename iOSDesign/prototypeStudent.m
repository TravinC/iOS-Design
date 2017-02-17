//
//  prototypeStudent.m
//  iOSDesign
//
//  Created by 崔文龙 on 17/2/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "prototypeStudent.h"

@implementation prototypeStudent


- (void)parametersCopyOperationWithprototypePeopleObject:(prototypePeople *)baseCopyObject {
    
    prototypeStudent *student = (prototypeStudent *)baseCopyObject;
    
    student.name  = self.name;
    student.age   = self.age;
    
    // 字典与数组的深层次拷贝
    student.infomation = [[[self.infomation class] alloc] initWithDictionary:self.infomation copyItems:YES];
}

@end
