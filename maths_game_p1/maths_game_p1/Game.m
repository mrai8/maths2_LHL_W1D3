//
//  Game.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "Game.h"

@implementation Game
-(instancetype)init{
    if (self=[super init]) {
        _leftSide = arc4random_uniform(90);
        _leftSide += 10;
        _rightSide = arc4random_uniform(90);
        _rightSide += 10;
        _startTime = [NSDate date];

        //_question = [NSString stringWithFormat:@"%ld + %ld", num1, num2];
        //_answer = num1 + num2;

        //NSLog(@"%@",_question);
    }
    
    return self;
}

-(NSInteger)answer {
    
    _endTime = [NSDate date];
    return _answer;
    
}

-(NSTimeInterval) gameTime{
    
    NSTimeInterval playTime = [self.startTime timeIntervalSinceDate:self.endTime];
    return playTime;
    
}

-(void)generateQ{
//abstract class all classes must implement
}

@end
