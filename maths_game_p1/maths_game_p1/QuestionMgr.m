//
//  QuestionMgr.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-03.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "QuestionMgr.h"
#import "Game.h"

@implementation QuestionMgr


- (instancetype)init
{
    self = [super init];
    if (self) {
        _qLog = [NSMutableArray new];
    }
    return self;
}

-(NSString *)timeOutput{
    
    NSTimeInterval totalTime = 0.0;
    for (Game *game in self.qLog){
        totalTime += [game gameTime];
    }
    NSString *gameStats = [NSString stringWithFormat:@"Total Time: %fs  Avg Time: %fs",totalTime,totalTime/[self.qLog count]];
    
    return gameStats;
}

@end
