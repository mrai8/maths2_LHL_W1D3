//
//  ScoreBoard.h
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreBoard : NSObject

@property (nonatomic) float rightA;
@property (nonatomic) float wrongA;


-(NSString *) gainPoint;

-(NSString *) gainFlop;

@end
