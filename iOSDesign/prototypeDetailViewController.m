//
//  prototypeDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 17/2/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "prototypeDetailViewController.h"
#import "prototypePeople.h"
#import "prototypeStudent.h"

@interface prototypeDetailViewController ()

@property (nonatomic, strong) NSString *content;

@end

@implementation prototypeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"原型模式，就是实例在创建的过程中，通过复制这个原型创建新的对象  \n\n 核心 ： 利用clone 替代 new";
        }
            break;
        case 1:{
            self.content = @" 1,  需要创建的对象应独立于其类型与创建方式 \n\n  2，  要实例化的类实在运行时决定的（很好理解） \n\n  3，  不想要与产品层次相对应的工厂层次（一层搞掂） \n\n  4，  不同类的实例的差异，仅仅是状态，这样情况，直接使用复制相应数量的原型更快捷可靠 \n\n  5，  类不容易创建， 比如每个组件可把其他组件作为子节点的组合对象。 复制已有的组合对象并对副本进行修改会更加容易（创建对象复杂，复制对象简单）" ;
        }
            break;
        case 2:{
            self.content = @" 要先了解一个问题，\n\n 1, 浅拷贝与深拷贝 （请看打印） \n\n 2，例子请直接看源码。";
            
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"原型模式";
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];
    
}


- (void)setup{
    
    
    /* 以下两个例子， 请从指针与内存块的角度理解一下什么为深拷贝与浅拷贝*/
    /* 在CocoaTouch框架， 使用原型模式， 一般都要会用NSCopying协议*/
    NSString *string = @"原型模式例子";
    NSString *copyString = [string copy]; // 没有产生新对象
    NSMutableString *mutableCopyString = [string mutableCopy]; // 产生新对象
    NSLog(@"\n========================\nstring指针内存地址 = %p \ncopyString指针内存地址 = %p \nmutableCopyString指针内存地址 = %p\n========================", &string, &copyString, &mutableCopyString);
    NSLog(@"\n========================\nstring = %p \ncopyString = %p \nmutableCopyString = %p\n========================", string, copyString, mutableCopyString);
    NSLog(@"\n\n");
    
    NSMutableString *string1 = [NSMutableString stringWithString:@"原型模式例子"];
    NSString *copyString1 = [string1 copy];// 产生新对象
    NSMutableString *mutableCopyString1 = [string1 mutableCopy];// 产生新对象
    NSLog(@"\n========================\nstring = %p \ncopyString = %p \nmutableCopyString = %p\n========================", string1, copyString1, mutableCopyString1);
    
    
    
    /*可以看到 personTwo的创建，非常方便快捷*/
    
    prototypeStudent *personOne    = [[prototypeStudent alloc] init];
    personOne.name       = @"ZHANGSAN";
    personOne.age        = @"18";
    personOne.infomation = @{@"A": @1,@"B": @2};
    NSLog(@"%@ %@ %@ %@", personOne, personOne.name, personOne.age, personOne.infomation);
    
    prototypeStudent *personTwo    = personOne.copy;
    personTwo.name       = @"LiSi";
    NSLog(@"%@ %@ %@ %@", personTwo, personTwo.name, personTwo.age, personTwo.infomation);
   
    
    
    
    
}



@end
