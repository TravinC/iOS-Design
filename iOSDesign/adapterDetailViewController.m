//
//  adapterDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/08/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "adapterDetailViewController.h"

@interface adapterDetailViewController ()

@property (nonatomic, strong) NSString *content;

@end

@implementation adapterDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"  1，将一个类的接口，转换成客户希望的另外一个接口，适配器模式原本由于接口不兼容而不能一起工作的那些类可以一起工作。\n  2，用于连接两种不同的对象，使到两种类没问题地协同工作，也可以称作为“包装器“\n 3， 在苹果中";
        }
            break;
        case 1:{
            self.content = @"  1,  已有类的接口与需求不匹配 \n\n  2， 想要一个可复用的类，该类能够同可能带有不兼容接口的其他类协作 \n\n  3， 需要适配一个类的几个不同子类，可是让每一个子类去子类化一个类适配器又不现实，那么就可以用适配器，来适配父类的接口" ;
        }
            break;
        case 2:{
            self.content = @" ";
            
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"适配器模式";
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];

    
}

- (void)setup{
    
}

@end
