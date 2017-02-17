//
//  singletonViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "singletonViewController.h"
#import "singletonDetailViewController.h"

@interface singletonViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation singletonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"单例模式";
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:dCellIdentifier_singletonCell];
    [self.view addSubview:tableView];
}

#pragma mark - UITableViewDataSource  &UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_singletonCell forIndexPath:indexPath];
    switch (indexPath.row) {
        case 0:{
            cell.textLabel.text = @"什么是单例模式？";
        }
            break;
        case 1:{
            cell.textLabel.text = @"什么时候使用单例模式？";
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
    singletonDetailViewController *vc = [singletonDetailViewController new];
    NSInteger row = indexPath.row;
    vc.type = (long)row;
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end
