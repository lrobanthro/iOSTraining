//
//  ViewController.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/12/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "ViewController.h"
#import "iOS_Training-Swift.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *lbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 150, 400, 20)];
    self.lbl.textColor = [UIColor grayColor];
    self.lbl.numberOfLines = 0;
    self.lbl.lineBreakMode = NSLineBreakByWordWrapping;
    [self.view addSubview:self.lbl];
    self.lbl.text = @"Click any of the buttons below for your fortune";
    self.lbl.accessibilityIdentifier = @"yeo";
    [self.lbl sizeToFit];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn1 setTitle:@"Fortune #1" forState:UIControlStateNormal];
    btn1.layer.cornerRadius = 3;
    btn1.layer.borderWidth = 1;
    btn1.layer.borderColor = [UIColor blueColor].CGColor;
    btn1.tag = 0;
    btn1.accessibilityIdentifier = @"btn";
    [btn1 sizeToFit];
    
    CGRect frame = btn1.frame;
    frame.size.width = frame.size.width + 20.0;
    frame.size.height = frame.size.height + 20.0;
    btn1.frame = frame;
    
    btn1.center = self.view.center;
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn2 setTitle:@"Fortune #2" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn2.layer.cornerRadius = 3;
    btn2.layer.borderWidth = 1;
    btn2.layer.borderColor = [UIColor redColor].CGColor;
    btn2.tag = 1;
    [btn2 sizeToFit];
    
    CGRect frame2 = btn2.frame;
    frame2.size.width = frame2.size.width + 20.0;
    frame2.size.height = frame2.size.height + 20.0;
    btn2.frame = frame2;
    
    btn2.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn1.frame) + 50);
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn3 setTitle:@"Fortune #3" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btn3.layer.cornerRadius = 3;
    btn3.layer.borderWidth = 1;
    btn3.layer.borderColor = [UIColor grayColor].CGColor;
    btn3.tag = 2;
    [btn3 sizeToFit];
    
    CGRect frame3 = btn3.frame;
    frame3.size.width = frame3.size.width + 20.0;
    frame3.size.height = frame3.size.height + 20.0;
    btn3.frame = frame3;
    
    btn3.center = CGPointMake(btn1.center.x, CGRectGetMaxY(btn2.frame) + 50);
    [self.view addSubview:btn3];
    [btn3 addTarget:self action:@selector(buttonTouched:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    [btn4 setTitle:@"Swift Version" forState:UIControlStateNormal];
    [btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn4.layer.cornerRadius = 3;
    btn4.layer.borderWidth = 1;
    btn4.layer.borderColor = [UIColor blackColor].CGColor;
    [btn4 sizeToFit];
    
    CGRect frame4 = btn4.frame;
    frame4.size.width = frame3.size.width + 20.0;
    frame4.size.height = frame3.size.height + 20.0;
    btn4.frame = frame4;
    
    btn4.frame = CGRectMake(300, 100, 100, 20);
    [self.view addSubview:btn4];
    [btn4 addTarget:self action:@selector(buttonSwiftTouched:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonSwiftTouched:(id)sender {
    UIViewController * swiftViewController = [SwiftViewController new];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:swiftViewController];
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)buttonTouched:(id)sender {
    UIButton *btn = (UIButton*) sender;
    NSString *labelText = btn.titleLabel.text;
    NSArray *fortunes = @[@"Take advantage of an upcoming opportunity - make this really long so that it's more than 1 or 2 lines", @"Never quit!", @"Tomorrow is another day"];
    NSString *fortune = fortunes[btn.tag];
    self.lbl.text = [NSString stringWithFormat:@"%@: %@", labelText, fortune];
    [self.lbl sizeToFit];
    
    CGRect frame = self.lbl.frame;
    frame.size.width = 400.0;
    self.lbl.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
