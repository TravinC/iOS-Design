//
//  cwlDesignModel.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/7/22.
//  Copyright © 2016年 cwl. All rights reserved.
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

#import "adapterViewController.h"
#import "bridgeViewController.h"
#import "facadeViewController.h"
#import "mediatorViewController.h"
#import "compositeViewController.h"
#import "observerViewController.h"
#import "iteratorViewController.h"

#import "visitorViewController.h"
#import "decratorViewController.h"
#import "chainOfResponsibilityViewController.h"

#import "templateMethodViewController.h"
#import "strategyViewController.h"
#import "commandViewController.h"

#import "flyweightViewController.h"
#import "proxyViewController.h"

#import "mementoViewController.h"

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
                            @[[cwlDesignListModel cdlModelWithName:@"适配器模式" object:[adapterViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"桥接模式" object:[bridgeViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"外观模式" object:[facadeViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"中介者模式" object:[mediatorViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"观察者模式" object:[observerViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"组合模式" object:[compositeViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"迭代模式" object:[iteratorViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"访问者模式" object:[visitorViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"装饰模式" object:[decratorViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"责任链模式" object:[chainOfResponsibilityViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"模板方法模式" object:[templateMethodViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"策略模式" object:[strategyViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"命令模式" object:[commandViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"享元模式" object:[flyweightViewController class]],
                              [cwlDesignListModel cdlModelWithName:@"代理模式" object:[proxyViewController class]]],
                            @[[cwlDesignListModel cdlModelWithName:@"备忘录模式" object:[mementoViewController class]]]
                            ];
    
    return cdlmodel;
    
}

@end
