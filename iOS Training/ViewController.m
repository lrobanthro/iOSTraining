//
//  ViewController.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/12/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 50.0, 200.0, 50.0)];
    lbl.text = @"Press a button to enter some text";
    lbl.backgroundColor = [UIColor lightGrayColor];
    [lbl sizeToFit ];
    [self.view addSubview:lbl];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Text 1" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btn1Touched:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 sizeToFit];
    btn1.center = self.view.center;
    [self.view addSubview:btn1];
}

- (void)btn1Touched:(id)sender {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
