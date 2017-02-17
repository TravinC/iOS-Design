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
#import "prototypeViewController.h"

@interface cwlDesignViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIView   *titleView;

@property (nonatomic, strong) UIView   *contentView;

@property (nonatomic, strong) UITableView               *tableView;
@property (nonatomic, strong) NSArray                   *designList;
@property (nonatomic, strong) NSArray                   *otherList;

@end

@implementation cwlDesignViewController

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    }
    return _tableView;
}

- (NSArray *)designList{
    if (!_designList) {
        _designList = @[[cwlDesignListModel cdlModelWithName:@"单例模式" object:[singletonViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"简单工厂模式" object:[factoryViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"抽象工厂模式" object:[abstractFactoryViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"生成器模式" object:[builderViewController class]],
                        [cwlDesignListModel cdlModelWithName:@"原型模式" object:[prototypeViewController class]]];
    }
    return _designList;
}

- (NSArray *)otherList{
    if (!_otherList) {
        _otherList = @[[cwlDesignListModel cdlModelWithName:@"23种设计模式的简单解释" object:[cwlDesignPopularExplanation class]]];
    }
    return _otherList;
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
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    switch (section) {
        case 0:{
            return self.otherList ? self.otherList.count : 0;;
        }
            break;
        case 1:{
            return self.designList ? self.designList.count : 0;
        }
            break;
        default:{
            return 0;
        }
            break;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    cwlDesignListCell *cell = [tableView dequeueReusableCellWithIdentifier:dCellIdentifier_designList forIndexPath:indexPath];
    switch (indexPath.section) {
        case 0:{
            cell.cdlModel = self.otherList[indexPath.row];
        }
            break;
        case 1:{
            cell.cdlModel = self.designList[indexPath.row];
        }
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    cwlDesignListModel *cdlModel;
    switch (indexPath.section) {
        case 0:{
            cdlModel = self.otherList[indexPath.row];
        }
            break;
        case 1:{
            cdlModel = self.designList[indexPath.row];
        }
            break;
    }
    UIViewController *vc  = [cdlModel.object new];
    vc.title              = cdlModel.name;
    [self.navigationController pushViewController:vc animated:YES];
}


- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:{
            return @"其他";
        }
            break;
        case 1:{
            return @"创建型：对象创建";
        }
            break;
        default:{
            return @"结构型：";
        }
            break;
    }
    
}


// 结构型：适配器模式  桥模式 组合模式 装饰模式 外观模式 代理模式 享元模式
// 行为型  职责链 命令模式 解释器模式 迭代器模式 中介者模式 备忘录模式 观察者模式 状态模式 策略模式 模板方法 访问者模式

@end
