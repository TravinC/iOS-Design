//
//  cwlDesignModel.m
//  iOSDesign
//
//  Created by 崔文龙 on 17/2/22.
//  Copyright © 2017年 cwl. All rights reserved.
//

// 这就是VM了

#import "cwlDesignModel.h"
#import "cwlDesignListModel.h"

// iOS-DesignVC
#import "cwlDesignPopularExplanation.h"
#import "singletonViewController.h"
#import "factoryViewController.h"
#import "abstractFactoryViewController.h"
#import "builderViewController.h"
#import "prototypeViewController.h"

@implementation cwlDesignModel

+ (instancetype)cdlModelWithStander{

    cwlDesignModel *cdlmodel = [[cwlDesignModel alloc] init];
    
    cdlmodel.titleList = @[@"其他",
                           @"对象创建",
                           @"接口适配",
                           @"对象去耦",
                           @"抽象集合",
                           @"行为扩展",
                           @"算法封装",
                           @"性能与对象访问",
                           @"对象状态",];
    
    cdlmodel.designList = @[@[[cwlDesignListModel cdlModelWithName:@"21种设计模式的通俗解释" object:[cwlDesignPopularExplanation class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"单例模式" object:[singletonViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"简单工厂模式" object:[factoryViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"抽象工厂模式" object:[abstractFactoryViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"生成器模式" object:[builderViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"原型模式" object:[prototypeViewController class]]],
                            @[],
                            @[],
                            @[],
                            @[],
                            @[],
                            @[],
                            @[]
                            ];
    
    return cdlmodel;
    
}

@end
