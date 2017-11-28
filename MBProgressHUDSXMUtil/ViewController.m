//
//  ViewController.m
//  MBProgressHUDSXMUtil
//
//  Created by 申铭 on 16/12/17.
//  Copyright © 2016年 shenming. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUDSXMUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //诚招古县美女
}

- (IBAction)test:(id)sender {
    [[MBProgressHUDSXMUtil sharedInstance] sxm_loadingWithView:self.view];
    [self performSelector:@selector(showText) withObject:nil afterDelay:3.2f];
}

- (IBAction)test1:(id)sender {
    [[MBProgressHUDSXMUtil sharedInstance] sxm_showWithText:@"错误标题" detail:@"详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误详细错误" type:SXMHUDMsgTypeError view:self.view];
}

- (void)showText
{
    [[MBProgressHUDSXMUtil sharedInstance] sxm_showWithText:@"加载完成" view:self.view];
    [self performSelector:@selector(showTextWithImage) withObject:nil afterDelay:1.2f];
}

- (void)showTextWithImage
{
    [[MBProgressHUDSXMUtil sharedInstance] sxm_showWithText:@"操作成功" type:SXMHUDMsgTypeSuccess];
    [self performSelector:@selector(showTextAndDetailWithImage) withObject:nil afterDelay:1.2f];
}

- (void)showTextAndDetailWithImage
{
    [[MBProgressHUDSXMUtil sharedInstance] sxm_showWithText:@"标题" detail:@"详细错误" type:SXMHUDMsgTypeError view:self.view];
}

@end
