//
//  cwlDesignViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "cwlDesignViewController.h"
#import "cwlDesignListCell.h"
#import "cwlDesignListModel.h"


// iOS-DesignVC
#import "cwlDesignPopularExplanation.h"
#import "singletonViewController.h"
#import "factoryViewController.h"
#import "abstractFactoryViewController.h"
#import "builderViewController.h"

@interface cwlDesignViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIView   *titleView;

@property (nonatomic, strong) UIView   *contentView;

@property (nonatomic, strong) UITableView               *tableView;
@property (nonatomic, strong) NSArray                   *designList;

@end

@implementation cwlDesignViewController

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    }
    return _tableView;
}

- (NSArray *)designList{
    if (!_designList) {
        _designList = @[[cwlDesignListModel cdlModelWithName:@"23种设计模式的简单解释" object:[cwlDesignPopularExplanation class]],
                        [cwlDesignListModel cdlModelWithName:@"单例模式" object:[singletonViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"简单工厂模式" object:[factoryViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"抽象工厂模式" object:[abstractFactoryViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"生成器模式" object:[builderViewController class]]];
    }
    return _designList;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"iOS-Design";
    
    self.contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:self.contentView];
    
    // TableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.contentView.bounds style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.dataSource = self;
    tableView.delegate = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [tableView registerClass:[cwlDesignListCell class] forCellReuseIdentifier:dCellIdentifier_designList];
    [self.contentView addSubview:tableView];
    self.tableView = tableView;
    
}

#pragma mark - UITableViewDataSource  &UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.designList ? self.designList.count : 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cwlDesignListCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_designList forIndexPath:indexPath];
    cell.cdlModel = self.designList[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    cwlDesignListModel *cdlModel = self.designList[indexPath.row];
    UIViewController *vc  = [cdlModel.object new];
    vc.title              = cdlModel.name;
    [self.navigationController pushViewController:vc animated:YES];
    
}




@end
