//
//  Game.h
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property (nonatomic) NSString * question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;
@property (nonatomic) NSInteger leftSide;
@property (nonatomic) NSInteger rightSide;


-(instancetype)init;

-(NSTimeInterval) gameTime;

-(void)generateQ;



@end
