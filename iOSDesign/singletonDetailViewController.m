//
//  singletonDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "singletonDetailViewController.h"
#import "Singleton.h"

@interface singletonDetailViewController ()

@property (nonatomic, strong) NSString *content;

@end

@implementation singletonDetailViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];

    switch (self.type) {
        case 0:{
        self.content = @"  这一模式意图是使得类的一个对象成为系统中的唯一实例 \n\n  也就是保证一个类仅有一个实例， 并提供一个访问它的全局访问点。";
        }
            break;
        case 1:{
        self.content = @"1， 类只能有一个实例， 而且必须从一个方便访问的地方进行访问，比如工厂方法。\n\n2,  这个唯一的实例智能通过子类化进行扩展，而且扩展的对象不会破坏程序代码。\n\n3， 单例模式分 “严格” 与 “非严格” 两种模式， 根据实际使用过程中变通";
        }
            break;
        case 2:{
        self.content = @" UIApplication类  \n UIApplication是一个极为常用的单例类，它提供了一个控制并协调iOS应用全局配置的 \n\n   NSFileManager类 \n  NSFileManager类也是一个是文件管理类 \n\n 另外可以参考源码中的严格模式实现， 参考打印";
           
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"单例模式";
    
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];
    
}


- (void)setup{

    // 单例模式例子, 打印的地址都是一样同一个地址
    Singleton *defaultManagerSingleton = [Singleton sharedInstance];
    Singleton *allocSingleton = [[Singleton alloc] init];
    Singleton *copySingleton = [allocSingleton copy];
    Singleton *newSingleton = [Singleton new];
    Singleton *mutebleCopySingleton = [allocSingleton mutableCopy];
    
    NSLog(@"defaultManagerSingleton:\n%p",defaultManagerSingleton);
    NSLog(@"allocSingleton:\n%p",allocSingleton);
    NSLog(@"copySingleton:\n%p",copySingleton);
    NSLog(@"newSingleton:\n%p",newSingleton);
    NSLog(@"mutebleCopySingleton:\n%p",mutebleCopySingleton);


}

@end
