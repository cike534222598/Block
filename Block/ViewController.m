//
//  ViewController.m
//  Block
//
//  Created by Jame on 15/5/25.
//  Copyright (c) 2015年 SSIC. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initLabel];
    [self initButton];
}

- (void)initLabel
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake((ECSCREEN_W - 100)/2, ECSCREEN_H/3, 100, 50)];
    
    label.text = @"您的姓名";
    label.tag = 100;
    label.textColor = [UIColor orangeColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:label];
}

- (void)initButton
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((ECSCREEN_W - 100)/2, ECSCREEN_H/2, 100, 50);
    
    [button setTitle:@"界面跳转" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)buttonClick:(UIButton *)button
{
    SettingViewController *settingViewController = [[SettingViewController alloc] init];
    
    [settingViewController setSettingUserName:^(NSString *userName) {
        if (userName.length != 0) {
            UILabel *label = (UILabel *)[self.view viewWithTag:100];
            label.text = userName;
        }
    }];
    
    [self.navigationController pushViewController:settingViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
