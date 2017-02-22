//
//  Device.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/5/29.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "Device.h"

@implementation Device

-(void)call{
    NSLog(@"call - 你的电话打了一个电话");
}

-(void)SendMessage{
    NSLog(@"SendMessage - 你的电话发了一条信息");
}

@end

@implementation IPhone 

-(void)call{
    
    [super call];
    NSLog(@"而且， 我的电话是Iphone");
}

-(void)SendMessage{
    
    [super SendMessage];
    NSLog(@"而且， 我的电话是Iphone");
}

@end

@implementation XiaoMi 

-(void)call{
    
    [super call];
    NSLog(@"而且， 我的电话是XiaoMi");
}

-(void)SendMessage{
    
    [super SendMessage];
    NSLog(@"而且， 我的电话是XiaoMi");
}

@end

@implementation HuaWei

-(void)call{
    
    [super call];
    NSLog(@"而且， 我的电话是HuaWei");
}

-(void)SendMessage{
    
    [super SendMessage];
    NSLog(@"而且， 我的电话是HuaWei");
}

@end

@implementation Nokia

-(void)call{
    
    [super call];
    NSLog(@"而且， 我的电话是Nokia");
}

-(void)SendMessage{
    
    [super SendMessage];
    NSLog(@"而且， 我的电话是Nokia");
}

@end
