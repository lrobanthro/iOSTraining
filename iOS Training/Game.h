//
//  Game.h
//  iOS Training
//
//  Created by Lynne Robinson on 11/30/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property (nonatomic, strong) NSString *gameType;
@property (nonatomic, strong) NSString *gameName;
@property (nonatomic, strong) NSString *ageGroup;

@property (nonatomic, assign) NSInteger numberofPieces;
@property (nonatomic, assign) NSInteger numberofPlayers;
@property (nonatomic, assign) float price;

@property (nonatomic, assign) BOOL purchased;
@property (nonatomic, assign) BOOL missingPieces;

- (void)setupGameValues;
@end
