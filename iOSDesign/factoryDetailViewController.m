//
//  factoryDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "factoryDetailViewController.h"
#import "factory.h"

@interface factoryDetailViewController ()

@property (nonatomic, strong) NSString *content;

@end

@implementation factoryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"定义创建对象的接口，让子类决定实例化那一个类，工厂方法使得一个类的实例化延迟到其子类。\n\n 简单的意义在于工厂类以及其实例化出来的子类都不是抽象类，都是具体的实现类";
        }
            break;
        case 1:{
            self.content = @"1,  简单工厂模式的核心是工厂类，该类中含有必要的判断逻辑, 以决定在什么时候创建哪一个产品类的实例。 \n\n  2，  在逻辑明确，对扩展性没太大要求的类中，可以用简单工厂模式";
        }
            break;
        case 2:{
            self.content = @" CocoaTouch框架中，本身就大量地方用到这个模式， 例如 NSNumber (NSNumberCreation)的分类中，具体子类型的实例有关的细节，都有NSNumber的类工厂方法负责， NSNumber的内部子类的一个实例初始化 \n\n 例子模拟Numbew的实现请看打印, 请重点关注Device.h";
            
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"简单工厂模式";
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];
    
}


- (void)setup{
    // 简单工厂模式例子, 打印的地址都是一样同一个地址
    
    Device *iPhone = [factory createPhone:IPhoneType];
    [iPhone call];
    [iPhone SendMessage];
    
    Device *XiaoMi = [factory createPhone:XiaoMiType];
    [XiaoMi call];
    [XiaoMi SendMessage];
    
    Device *HuaWei = [factory createPhone:HuaWeiType];
    [HuaWei call];
    [HuaWei SendMessage];
    
    Device *Nokia = [factory createPhone:NokiaType];
    [Nokia call];
    [Nokia SendMessage];

    
}
@end
