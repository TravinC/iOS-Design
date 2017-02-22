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
#import "cwlDesignModel.h"


// iOS-DesignVC
#import "cwlDesignPopularExplanation.h"
#import "singletonViewController.h"
#import "factoryViewController.h"
#import "abstractFactoryViewController.h"
#import "builderViewController.h"
#import "prototypeViewController.h"

@interface cwlDesignViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIView   *titleView;

@property (nonatomic, strong) UIView   *contentView;

@property (nonatomic, strong) UITableView               *tableView;

@property (nonatomic, strong) cwlDesignModel *cdm;

@end

@implementation cwlDesignViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"iOS-Design";
    
    self.cdm = [cwlDesignModel cdlModelWithStander];
    
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.cdm.titleList.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *arr = self.cdm.designList[section];
    
    return arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cwlDesignListCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_designList forIndexPath:indexPath];
    NSArray *arr = self.cdm.designList[indexPath.section];
    cell.cdlModel = arr[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSArray *arr = self.cdm.designList[indexPath.section];
    cwlDesignListModel *cdlModel = arr[indexPath.row];
    UIViewController *vc  = [cdlModel.object new];
    vc.title              = cdlModel.name;
    [self.navigationController pushViewController:vc animated:YES];
}


- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
   
    NSString *title = self.cdm.titleList[section];
    return title;
}


@end
