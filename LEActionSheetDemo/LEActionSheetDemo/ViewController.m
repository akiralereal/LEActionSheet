//
//  ViewController.m
//  LEActionSheetDemo
//
//  Created by akira on 2016/12/13.
//  Copyright © 2016年 akira. All rights reserved.
//

#import "ViewController.h"
#import "LEActionSheet.h"

@interface ViewController ()<LEActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initView];
}

- (void)initView {
    
    UIButton *showBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 120)/2, (self.view.frame.size.height - 50)/2, 120, 50)];
    [self.view addSubview:showBtn];
    [showBtn setTitle:@"按钮" forState:UIControlStateNormal];
    [showBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    showBtn.layer.borderWidth = 0.5f;
    showBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    showBtn.layer.cornerRadius = 2.0f;
    showBtn.layer.masksToBounds = YES;
    [showBtn addTarget:self action:@selector(showAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)showAction {
    // 创建LeActionSheet对象
    LEActionSheet *sheet = [[LEActionSheet alloc] initWithDelegate:self CancelTitle:@"取消" OtherTitles:@"打开相册", @"打开相机", nil];
    // 2.显示出来
    [sheet show];
}

// 实现代理方法
- (void)actionSheet:(LEActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 1:
            //相册
            break;
        case 2:
            //相机
            break;
            
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
