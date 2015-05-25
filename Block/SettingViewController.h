//
//  SettingViewController.h
//  Block
//
//  Created by Jame on 15/5/25.
//  Copyright (c) 2015年 SSIC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingViewController : UIViewController

@property (nonatomic,copy) void (^settingUserName) (NSString *userName);

@end
