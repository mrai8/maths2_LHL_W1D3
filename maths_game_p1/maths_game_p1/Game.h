//
//  Game.h
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property NSString * question;
@property NSInteger answer;

-(instancetype)initGame;


@end
