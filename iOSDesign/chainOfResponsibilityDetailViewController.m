//
//  chainOfResponsibilityDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/08/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "chainOfResponsibilityDetailViewController.h"

@interface chainOfResponsibilityDetailViewController ()
@property (nonatomic, strong) NSString *content;
@end

@implementation chainOfResponsibilityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"";
        }
            break;
        case 1:{
            self.content = @" " ;
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
    self.title = @"责任链模式";
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
