//
//  Game.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "Game.h"

@implementation Game
-(instancetype)initGame{
    if (self=[super init]) {
        NSInteger num1 = arc4random_uniform(90);
        num1 += 10;
        NSInteger num2 = arc4random_uniform(90);
        num2 += 10;
        _question = [NSString stringWithFormat:@"%ld + %ld", num1, num2];
        _answer = num1 + num2;
        NSLog(@"%@",_question);
    }
    
    return self;
}



@end
