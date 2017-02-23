//
//  strategyViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 17/2/23.
//  Copyright © 2017年 cwl. All rights reserved.
//

#import "strategyViewController.h"
#import "strategyDetailViewController.h"

@interface strategyViewController ()

@end

@implementation strategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    self.title = @"策略模式";
    [self.myTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:dCellIdentifier_strategyCell];
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_strategyCell forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:{
            cell.textLabel.text = @"什么是策略模式？";
        }
            break;
        case 1:{
            cell.textLabel.text = @"什么时候使用策略模式？";
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
    strategyDetailViewController *vc = [strategyDetailViewController new];
    NSInteger row = indexPath.row;
    vc.type = (long)row;
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end