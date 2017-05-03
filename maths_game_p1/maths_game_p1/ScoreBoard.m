//
//  ScoreBoard.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "ScoreBoard.h"

@implementation ScoreBoard

-(instancetype) init {
    if (self=[super init]) {
        _rightA = 0;
        _wrongA = 0;
    }
    return self;
}

-(NSString *) gainPoint{
    self.rightA += 1;
    float total = self.rightA / (self.rightA + self.wrongA) *100.0;
    NSString *scoring = [NSString stringWithFormat:@"score: %0.2f right %0.2f wrong. Your current win ratio is %0.0f%%", self.rightA, self.wrongA, total];
    return scoring;
}

-(NSString *) gainFlop{
    self.wrongA += 1;
    float total = self.rightA / (self.rightA + self.wrongA) *100.0;
    NSString *scoring = [NSString stringWithFormat:@"score: %0.2f right %0.2f wrong. Your current win ratio is %0.0f%%", self.rightA, self.wrongA, total];
    return scoring;
}
    



@end
