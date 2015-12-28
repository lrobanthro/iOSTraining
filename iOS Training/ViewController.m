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
    
    self.lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 50, 200, 20)];
    self.lbl.textColor = [UIColor grayColor];
    [self.view addSubview:self.lbl];
    self.lbl.text = @"Click any of the buttons below for your fortune";
    [self.lbl sizeToFit];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Fortune #1" forState:UIControlStateNormal];
    btn1.layer.cornerRadius = 3;
    btn1.layer.borderWidth = 1;
    btn1.layer.borderColor = [UIColor grayColor].CGColor;
    btn1.tag = 1;
    [btn1 sizeToFit];
    btn1.center = self.view.center;
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"Fortune #2" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn2.layer.cornerRadius = 3;
    btn2.layer.borderWidth = 1;
    btn2.layer.borderColor = [UIColor grayColor].CGColor;
    btn2.tag = 2;
    [btn2 sizeToFit];
    btn2.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn1.frame) + 20);
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn3 setTitle:@"Fortune #3" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btn3.layer.cornerRadius = 3;
    btn3.layer.borderWidth = 1;
    btn3.layer.borderColor = [UIColor grayColor].CGColor;
    btn3.tag = 3;
    [btn3 sizeToFit];
    btn3.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn2.frame) + 20);
    [self.view addSubview:btn3];
    [btn3 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonTouched:(id)sender {
    UIButton *btn = (UIButton*) sender;
    NSString *labelText = [[NSString alloc] initWithString:btn.titleLabel.text];
    NSArray *fortunes = @[@": Take advantage of an opportunity", @": Never quit!", @": Tomorrow is another day"];
    NSString *fortune = fortunes[btn.tag - 1];
    NSLog(@"Button Pressed!");
    labelText = [labelText stringByAppendingString: fortune];
    self.lbl.text = labelText;
    [self.lbl sizeToFit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
