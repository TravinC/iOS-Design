//
//  adapterViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/08/11.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "adapterViewController.h"
#import "adapterDetailViewController.h"

@interface adapterViewController ()

@end

@implementation adapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    self.title = @"适配器模式";
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:dCellIdentifier_adapterCell];
    
}

#pragma mark - UITableViewDataSource  &UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_adapterCell forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:{
            cell.textLabel.text = @"什么是适配器模式？";
        }
            break;
        case 1:{
            cell.textLabel.text = @"什么时候使用适配器模式？";
        }
            break;
        case 2:{
            cell.textLabel.text = @"例子";
        }
            break;
            
        default:
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    adapterDetailViewController *vc = [adapterDetailViewController new];
    NSInteger row = indexPath.row;
    vc.type = (long)row;
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
