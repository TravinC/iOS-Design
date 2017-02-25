//
//  prototypePeople.h
//  iOSDesign
//
//  Created by 崔文龙 on 16/7/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

/*模拟一下*/
#import <Foundation/Foundation.h>

@interface prototypePeople : NSObject <NSCopying>

/**子类重写改方法*/
- (void)parametersCopyOperationWithprototypePeopleObject:(prototypePeople *)baseCopyObject;


@end
