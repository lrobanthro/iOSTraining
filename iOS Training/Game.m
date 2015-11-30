//
//  Game.m
//  iOS Training
//
//  Created by Lynne Robinson on 11/30/15.
//  Copyright © 2015 URBN. All rights reserved.
//

#import "Game.h"

@implementation Game

- (void)setupGameValues {
    self.gameType = nil;
    self.gameName = nil;
    self.ageGroup = nil;
    
    self.numberofPieces = 0;
    self.numberofPlayers = 0;
    self.price = 0.0;
    
    self.purchased = NO;
    self.missingPieces = NO;
}

@end
