//
//  baseViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/08/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "baseViewController.h"

@interface baseViewController () 

@end

@implementation baseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableView];
    self.myTableView = tableView;
    
}




@end
