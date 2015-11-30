//
//  BoardGame.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/30/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "BoardGame.h"

@implementation BoardGame

- (void)setupGameValues {
    self.gameType = @"Board Game";
    self.gameName = @"Ticket to Ride";
    self.ageGroup = @"10+";
    
    self.numberofPieces = 125;
    self.numberofPlayers = 4;
    self.price = 29.99;
    
    self.purchased = YES;
    self.missingPieces = NO;
}

@end
