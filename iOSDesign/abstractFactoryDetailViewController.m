//
//  abstractFactoryDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/18.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "abstractFactoryDetailViewController.h"
#import "abstractFactoryButton.h"

@interface abstractFactoryDetailViewController ()

@property (nonatomic, copy) NSString *content;

@end

@implementation abstractFactoryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"提供一个创建一系列相关或者相互依赖的接口，而无需置顶它们具体的类";
        }
            break;
        case 1:{
            self.content = @"1,  如果有多个类共有相同行为，但实际实现不同，则可能需要某种抽象类型作为其父类被继承。 \n\n  2，  不能确定明确的逻辑，需要实现的时候，才能确定实际的实例。这个时候，就可以利用抽象工厂模式，提供相应的组合方法。让使用者主动创建他想要的实例";
        }
            break;
        case 2:{
            self.content = @" 简单工厂: \n 1， 通过类继承创建抽象产品 \n 2， 创建多种子产品 \n 3， 子类化创建的产品通过重载工厂方法以创新产品 \n\n\n\n 抽象工厂: \n 1， 通过对象组合创建抽象产品 \n 2， 创建多系列产品 \n 3， 必须修改父类的接口才能支持新的产品";
            
        }
            break;
        case 3:{
            self.content = @"在CocoaTouch中， 也有大量地方用到抽象工厂模式去设计类 例如NSString , NSArray , NSDictonary, NSData, 当然NSNumber也是一个， 请看源码";
            
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"抽象工厂模式";
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];
    
}

- (void)setup{

    /*
     从打印中可以发现， 通过接受不同的参数，可以返回不同的NSStrng或者NSNumber实例，实现这些实例是通过类工厂方法
     1，numberWithBool: 创建__NSCFBoolean工厂的实例
     2，同理numberWithChar : 创建__NSCFNumber的实例
     
     NSNumber中的类工厂方法定义了决定实例化种类的具体实现
     而NSNumber本身， 则是继承自NSValue， 是NSValue的超集
     基础框架中抽象工厂的此种特点叫做 类簇
     
     对于NSNumber来说，我们使用一个NSNumber来作为int，bool，long， double等原生数据类型的工厂，对外定义一堆的工厂方法
     在NSNumber内部则转调给相应的像NSInt这样的内部类去实现具体的逻辑。这样，我们遇到的问题就得到了完美的解决
     这就是抽象工厂模式。
     
     按照这种设计模式，自己实现一个具体的类簇。
     
     */
    
    NSNumber * boolNumber = [NSNumber numberWithBool:YES];
    NSNumber * charNumber = [NSNumber numberWithChar:'a'];
    NSNumber * intNumber = [NSNumber numberWithInt:1];
    NSNumber * floatNumber = [NSNumber numberWithFloat:1.0];
    NSNumber * doubleNumber = [NSNumber numberWithDouble:1.0];
    
    NSLog(@"boolNumber - %@, ", [[boolNumber class] description]); // __NSCFBoolean
    NSLog(@"charNumber - %@, ", [[charNumber class] description]); // __NSCFNumber
    NSLog(@"intNumber - %@, ", [[intNumber class] description]); // __NSCFNumber
    NSLog(@"floatNumber - %@, ", [[floatNumber class] description]); // __NSCFNumber
    NSLog(@"doubleNumbe - %@, ", [[doubleNumber class] description]);  // __NSCFNumber
    NSLog(@"\n\n");
    NSString *nullStr = [[NSString alloc] init];
    NSString *numStr = [[NSString alloc] initWithFormat:@"test %d",1];
    NSString *strToStr = @"test";
    NSString *objectCStr = [NSString stringWithCString:"c Language String" encoding:NSUTF8StringEncoding];
    NSString *fmtStr = [NSString stringWithFormat:@"%@年%@月%@日" ,@"1949",@"10",@"1"];
    NSString *fmtAppentStr = [NSString stringWithFormat:@"%@%@",@"www.",@"baidu.com"];
    NSString *appentStr = [fmtAppentStr stringByAppendingFormat:@"%@%@",@"one ",@"two "];
    NSString *objAppantStr = [appentStr stringByAppendingString:@" three "];
    
    NSLog(@"nullStr - %@", [[nullStr class] description]);  // __NSCFConstantString
    NSLog(@"numStr - %@",[[numStr class] description]);    // NSTaggedPointerString
    NSLog(@"strToStr - %@",[[strToStr class] description]);  // __NSCFConstantString
    NSLog(@"objectCStr - %@",[[objectCStr class] description]); // __NSCFString
    NSLog(@"fmtStr - %@",[[fmtStr class] description]);  // __NSCFString
    NSLog(@"fmtAppentStr - %@",[[fmtAppentStr class] description]); // __NSCFString
    NSLog(@"appentStr - %@",[[appentStr class] description]); // __NSCFString
    NSLog(@"objAppantStr - %@",[[objAppantStr class] description]); // __NSCFString
    NSLog(@"\n\n");
    
    
    /* 
     场景：现在想实现自己的按钮，经过定制后，实现特定功能，并为以后其他版本做好扩展
     现在想实现abstractFactoryButtonBlue， abstractFactoryButtonBlack,  abstractFactoryButtonRed
     
     猜想方案 ：
     1. 继承abstractFactoryButton，实现子类abstractFactoryButtonBlue和abstractFactoryButtonBlack和abstractFactoryButtonRed在所有调用abstractFactoryButton的地方，在子类中定义好具体实现逻辑
     2. 把abstractFactoryButton做成类簇，对外暴露通用接口，对内转调给内部类来实现具体逻辑。
     
     解析 ： 
     在这里，对于可扩展性来说是比较重要的， 因为未来在需要定制更多的功能。所以
     方案2 是比较好的一种方案，做到了对外暴露最小化，而所有调用的地方都可以不用修改，所有的修改可以只在abstractDevice这个类中即可完成。
     
     */
    
    abstractFactoryButton *a = [abstractFactoryButton abstractFactoryButtonWithType:abstractFactoryButtonTypeButtonTypeBlue];
    [a isAButton];
    abstractFactoryButton *b = [abstractFactoryButton abstractFactoryButtonWithType:abstractFactoryButtonTypeButtonTypeBlack];
    [b isAButton];
    abstractFactoryButton *c = [abstractFactoryButton abstractFactoryButtonWithType:abstractFactoryButtonTypeButtonTypeRed];
    [c isAButton];
    
    NSLog(@"a - %@", [[a class] description]); //UIButton -> abstractFactoryButton -> abstractFactoryButtonBlue
    NSLog(@"b - %@",[[b class] description]);
    NSLog(@"c - %@",[[c class] description]);
    
    
    /*总结一下，看起来好像没有什么区别，随着需要扩展的按钮越多，需要建立的子类会更多，而且都要重载父类方法，或者增加方法
     
     创建一个抽象的公共类，创建多个继承自该抽象公共类的子类，由子类实现不同的功能，然后将子类引入到父类，即抽象公共类的.m实现文件中，通过父类调用特定方法实例化子类，进一步调用子类的实现方法，可以很好地隐藏子类的接口及实现方式。
     例如上面明明用的是abstractFactoryButton类创建出来的，是abstractFactoryButtonBlue类
     由例如CocoaTouch中系统的类， NSNumber，NSStrng，NSData等。 
     
     再比如NSArray及可变版本NSMutableArray。所以有两个基本的抽象类，一个是不可变数组类，另一个是可变数组类。他们依然属于类簇，不过两个基本抽象类都暴露在了interface中。
     不可变的那个类定义了数组的所有通用方法，可变的类只定义了可变数组可以调用的方法。这样的好处在于，这两个类背后可以有大量相同的代码可以复用，也可以方便进行可变拷贝和不可变拷贝。
     
     */
    
}

@end





















