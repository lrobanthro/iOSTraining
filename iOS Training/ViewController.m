//
//  ViewController.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/12/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *lbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lbl = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 50.0, 200.0, 50.0)];
    self.lbl.text = @"Press a button to enter some text";
    self.lbl.backgroundColor = [UIColor lightGrayColor];
    [self.lbl sizeToFit ];
    [self.view addSubview:self.lbl];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Text 1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 sizeToFit];
    btn1.center = self.view.center;
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"Text for btn2" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 sizeToFit];
    btn2.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn1.frame) + 20.0);
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3 setTitle:@"Text for btn3" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btnTouched:) forControlEvents:UIControlEventTouchUpInside];
    [btn3 sizeToFit];
    btn3.center = CGPointMake(btn2.center.x, CGRectGetMaxY(btn2.frame) + 20.0);
    [self.view addSubview:btn3];
}

- (void)btnTouched:(id)sender {
    UIButton *btn = (UIButton *)sender;
    NSString *buttonTitle = btn.titleLabel.text;
    self.lbl.text = buttonTitle;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
