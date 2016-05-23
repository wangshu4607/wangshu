//
//  ViewController.m
//  wangshu
//
//  Created by IMISI on 16/5/23.
//  Copyright © 2016年 IMISI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong)UILabel *teamLabel1;
@property(nonatomic,strong)UILabel *teamLabel2;
@property(nonatomic,strong)UILabel *teamName1;
@property(nonatomic,strong)UILabel *teamName2;
@property(nonatomic,strong)UILabel *teamScore1;
@property(nonatomic,strong)UILabel *teamScore2;
@property(nonatomic,strong)UILabel *gameScore1;
@property(nonatomic,strong)UILabel *gameScore2;
@property(nonatomic,strong)UIButton *addBT1;
@property(nonatomic,strong)UIButton *addBT2;
@property(nonatomic,strong)UIButton *clearBT;
@property(nonatomic,assign)NSInteger temp1;
@property(nonatomic,assign)NSInteger temp2;
@property(nonatomic,assign)NSInteger num1;
@property(nonatomic,assign)NSInteger num2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initLayout];
    self.temp1 = 0;
    self.temp2 = 0;
    self.num1 = 0;
    self.num2 = 0;
}
//布局
- (void)initLayout{
    
    self.teamLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 100, 40)];
    //    self.teamLabel1.backgroundColor = [UIColor cyanColor];
    self.teamLabel1.textAlignment = NSTextAlignmentCenter;
    self.teamLabel1.text = @"队伍名称：";
    [self.view addSubview:self.teamLabel1];
    
    self.teamName1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    //    self.teamName1.backgroundColor = [UIColor cyanColor];
    self.teamName1.text = @"队伍一";
    self.teamName1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamName1];
    
    self.teamLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(200, 100, 100, 40)];
    //    self.teamLabel2.backgroundColor = [UIColor cyanColor];
    self.teamLabel2.textAlignment = NSTextAlignmentCenter;
    self.teamLabel2.text = @"队伍名称：";
    [self.view addSubview:self.teamLabel2];
    
    self.teamName2 = [[UILabel alloc] initWithFrame:CGRectMake(300, 100, 100, 40)];
    //    self.teamName2.backgroundColor = [UIColor cyanColor];
    self.teamName2.text = @"队伍二";
    self.teamName2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamName2];
    
    self.teamScore1 = [[UILabel alloc] initWithFrame:CGRectMake(70, 160, 80, 40)];
    self.teamScore1.backgroundColor = [UIColor redColor];
    self.teamScore1.font = [UIFont boldSystemFontOfSize:18];
    self.teamScore1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamScore1];
    
    self.teamScore2 = [[UILabel alloc] initWithFrame:CGRectMake(260, 160, 80, 40)];
    self.teamScore2.backgroundColor = [UIColor redColor];
    self.teamScore2.font = [UIFont boldSystemFontOfSize:18];
    self.teamScore2.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.teamScore2];
    
    self.gameScore1 = [[UILabel alloc] initWithFrame:CGRectMake(70, 210, 80, 40)];
    self.gameScore1.textAlignment = NSTextAlignmentCenter;
    self.gameScore1.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.gameScore1];
    
    self.addBT1 = [UIButton buttonWithType:UIButtonTypeSystem];
    //    self.addBT1.backgroundColor = [UIColor cyanColor];
    [self.addBT1 setTitle:@"+1" forState:UIControlStateNormal];
    [self.addBT1 addTarget:self action:@selector(addAction1) forControlEvents:UIControlEventTouchUpInside];
    self.addBT1.frame = CGRectMake(150, 210, 40, 40);
    [self.view addSubview:self.addBT1];
    
    self.gameScore2 = [[UILabel alloc] initWithFrame:CGRectMake(260, 210, 80, 40)];
    self.gameScore2.textAlignment = NSTextAlignmentCenter;
    self.gameScore2.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.gameScore2];
    
    self.addBT2 = [UIButton buttonWithType:UIButtonTypeSystem];
    //    self.addBT2.backgroundColor = [UIColor cyanColor];
    [self.addBT2 setTitle:@"+1" forState:UIControlStateNormal];
    [self.addBT2 addTarget:self action:@selector(addAction2) forControlEvents:UIControlEventTouchUpInside];
    self.addBT2.frame = CGRectMake(340, 210, 40, 40);
    [self.view addSubview:self.addBT2];
    
    self.clearBT = [UIButton buttonWithType:UIButtonTypeSystem];
    self.clearBT.backgroundColor = [UIColor cyanColor];
    self.clearBT.frame = CGRectMake(self.view.bounds.size.width / 2 - 20, 280, 40, 40);
    [self.clearBT setTitle:@"清除" forState:UIControlStateNormal];
    [self.clearBT addTarget:self action:@selector(clearAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.clearBT];
    
}

- (void)addAction1{
    
    self.temp1 += 1;
    self.gameScore1.text = [NSString stringWithFormat:@"%ld",self.temp1];
    if (self.temp1 == 10) {
        
        self.num1 += 1;
        self.teamScore1.text = [NSString stringWithFormat:@"%ld",self.num1];
        self.temp1 = 0;
    }
    
}
- (void)addAction2{
    
    self.temp2 += 1;
    self.gameScore2.text = [NSString stringWithFormat:@"%ld",self.temp2];
    if (self.temp2 == 10) {
        
        self.num2 += 1;
        self.teamScore2.text = [NSString stringWithFormat:@"%ld",self.num2];
        self.temp2 = 0;
    }
    
}
- (void)clearAction{
    
    self.temp1 = 0;
    self.temp2 = 0;
    self.gameScore1.text = [NSString stringWithFormat:@"%ld",self.temp1];
    self.gameScore2.text = [NSString stringWithFormat:@"%ld",self.temp2];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
