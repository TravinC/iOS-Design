//
//  builderDetailViewController.m
//  iOSDesign
//
//  Created by 崔文龙 on 16/6/18.
//  Copyright © 2016年 cwl. All rights reserved.
//  作者 : 崔文龙Travin
//  github : https://github.com/TravinC
//

#import "builderDetailViewController.h"


#import "builderStandarCharacterBuilder.h"
#import "builderChasingGame.h"



#import "buildAssemblyCar.h"
#import "buildBenz.h"

@interface builderDetailViewController ()

@property (nonatomic, copy) NSString *content;

@end

@implementation builderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    switch (self.type) {
        case 0:{
            self.content = @"将一个复杂的对象构建与它的表现分离，使得同样的构建过程可以创建不同的表现";
        }
            break;
        case 1:{
            self.content = @"1,  需要创建涉及各种部件的复杂对象。创建对象的算法应该独立于部件的装配方式。常见的例子是构建组合开发 \n\n  2，  构建过程需要以不同的方式(例如， 部件或表现的不同组合) 构建对象";
        }
            break;
        case 2:{
            self.content = @" 抽象工厂: \n 1， 抽象工厂则是为了创建成族的产品（系列产品），同族产品的构造在逻辑上并不存在必然的联系（唯一必然的联系就是大家都属于一族） \n 2， 抽象工厂的构造方法都是独立去构建自己的产品对象，因此他们不存在必然的联系， 而客户端是通过调用不同的工厂方法获取不同的产品 \n 3， 构造产品的方法，必须暴露出来，放到interface中实现，\n 4，抽象工厂的本质，无论角色和功能怎样变换，但所含的业务逻辑角色都应该存在 \n\n\n\n 生成器模式: \n 1， 生成器模式是为了构造一个复杂的产品，而且购造这个产品遵循一定的规则（相同的过程） \n 2， 生成器模式的构造方法是为了构造同一个产品，因此必须有指导者来协调进行工作，构造方法之间存在必然的业务联系 \n 3， 在生成器模式中，那些用来构造产品不同部分的方法一般都封装在内部，不暴露出来让其调用以影响产品结果 \n 4，生成器模式的角色有生成器，产品和指导者(请从例子里理解)";
            
        }
            break;
        case 3:{
            self.content = @"请搞清楚，\n哪一个是产品， \n哪一个是“指导者”， \n哪一个是生成器， \n请看源码与打印";
            
            [self setup];
        }
            break;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"生成器模式";
    UILabel *conteteLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    conteteLabel.numberOfLines = 0;
    conteteLabel.font = [UIFont boldSystemFontOfSize:15];
    conteteLabel.textColor = [UIColor blackColor];
    conteteLabel.textAlignment = NSTextAlignmentLeft;
    conteteLabel.text = self.content;
    [self.view addSubview:conteteLabel];
    
}

- (void)setup{
    
    /*
     请注意这个例子中，有四个类 builderCharacter, builderCharacterBuilder, builderStandarCharacterBuilder, builderChasingGame
     
     1，builderCharacter 这个定义了一个类型角色，所拥有的属性和初始化方法。
     2, buildrCharacterBuilder 这个是抽象接口类， 而builderStandarCharacterBuilder这个是决定具体业务的子生成器
     3，builderChasingGame 就是 “指导者”
     
     这种模式，主要的思想就是， 有一些对象，涉及具有多种特征的，通过不同特征可以组合成不同类型的同一个对象，这个时候，构建每一个特征的方法就应该做成builder， 不应该像工厂模式一样，在每一个子类中去单独定义他具体的业务逻辑。
     
     */
    
    // 具体生成器
    builderCharacterBuilder *characterBuilder = [[builderStandarCharacterBuilder alloc] init];
    // 指导者
    builderChasingGame *chasingGame = [[builderChasingGame alloc] init];
    
    builderCharacter *player = [chasingGame createPlayer:characterBuilder];
    builderCharacter *enemy = [chasingGame createEnemy:characterBuilder];
    
    NSLog(@"player protection : %f aggressiveness : %f", player.protection, player.aggressiveness);
    NSLog(@"player protection : %f aggressiveness : %f", enemy.protection, enemy.aggressiveness);
    NSLog(@"\n\n");
    
    
    
    
    /*
     个人感觉这个例子不是很适合的， 因为在buildBenz类中，实质上是处理具体业务的类的， 在这个例子中，这种业务体现不出变化的感觉，因为固定了某一个值，而不像上面一样，体现的是一种变化。
     
     
     */
    
    // 具体生成器
    buildCarBuilder *carBuilder = [[buildBenz alloc] init];
    // 指导者
    buildAssemblyCar *carAssembly = [[buildAssemblyCar alloc] init];
    
    buildCar *benz = [carAssembly assemblyBenCar:carBuilder];
    NSLog(@"%@, %f个轮 ,%f 个门,  %@引擎 , %@底盘",benz.name, benz.numWheels, benz.numDoors, benz.vehicleEngine, benz.vehicleChassis);
    buildCar *otherCar = [carAssembly assemblyOtherCar:carBuilder];
    NSLog(@"%@, %f个轮 ,%f 个门,  %@引擎 , %@底盘",otherCar.name, otherCar.numWheels, otherCar.numDoors, otherCar.vehicleEngine, otherCar.vehicleChassis);
    
    
    
    
    
    
    
}

@end

