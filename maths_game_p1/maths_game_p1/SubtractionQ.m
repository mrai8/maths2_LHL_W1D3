//
//  SubtractionQ.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-03.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "SubtractionQ.h"

@implementation SubtractionQ

-(instancetype)init{
    if (self=[super init]) {
        [self generateQ];
    }
    
    return self;
}

-(void)generateQ{
    self.question = [NSString stringWithFormat:@"%ld - %ld", self.leftSide, self.rightSide];
    self.answer = self.leftSide - self.rightSide;
    NSLog(@"%@",self.question);
}


@end
