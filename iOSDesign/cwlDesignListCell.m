//
//  cwlDesignListCell.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "cwlDesignListCell.h"
#import "cwlDesignListModel.h"

@interface cwlDesignListCell ()

@property (strong, nonatomic, readwrite) UILabel *titleLabel;
@property (strong, nonatomic) NSString *title;

@end

@implementation cwlDesignListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        self.backgroundColor = [UIColor whiteColor];
        if (!_titleLabel) {
            _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15.f, 7, ([UIScreen mainScreen].bounds.size.width - 120), 30)];
            _titleLabel.backgroundColor = [UIColor clearColor];
            _titleLabel.font = [UIFont systemFontOfSize:16];
            _titleLabel.textColor = [UIColor blackColor];
            [self.contentView addSubview:_titleLabel];
        }
    }
    return self;
}

- (void)setCdlModel:(cwlDesignListModel *)cdlModel
{
    _cdlModel = cdlModel;
    
    _titleLabel.text = cdlModel.name;
    
}


@end
