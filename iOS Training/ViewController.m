//
//  ViewController.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/12/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Vehicle *v1 = [[Vehicle alloc] init];
    v1.make = @"Toyota";
    v1.model = @"Camry";
    v1.name = @"Sally";
    
    Car *c1 = [[Car alloc] init];
    c1.make = @"Audi";
    c1.model = @"A5";
    c1.numberOfDoors = 2;
    
    Car *c2 = [[Car alloc] init];
    [c2 setupVehicleValues];
    c2.make = @"Audi";
    c2.model = @"A7";
    c2.numberOfDoors = 4;
    
    NSLog(@"c1 values = %@, - %@/%@", c1, c1.make, c1.model);
    NSLog(@"c2 values = %@, - %@/%@", c2, c2.make, c2.model);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
