//
//  main.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"
#import "UserInput.h"
#import "ScoreBoard.h"
#import "QuestionMgr.h"
#import "Qfactory.h"
#import "AdditionQ.h"
#import "SubtractionQ.h"
#import "MultiplicationQ.h"
#import "DivisionQ.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        BOOL gameOn = YES;
        
        ScoreBoard *scoreOne = [[ScoreBoard alloc] init];
        QuestionMgr *gameMgr = [[QuestionMgr alloc] init];
        Qfactory *randomizer = [[Qfactory alloc] init];
        
        
        while(gameOn){
            
            Game *gameOne = [randomizer generateRQ];
            
            NSString *submission = [UserInput getSubmission];
            NSInteger submissionInt = [submission integerValue];
            
            if (submissionInt==gameOne.answer) {
                
                NSString *result = [scoreOne gainPoint];
                NSLog(@"%@", result);
                
            } else {
                NSString *result = [scoreOne gainFlop];
                NSLog(@"%@", result);
            }
            
            [gameMgr.qLog addObject:gameOne];
            
                      printf("Type 'quit' to end game: ");

            NSString *quitt = [UserInput getSubmission];
            
            if ([quitt isEqualToString:(@"quit")]) {
                gameOn = NO;
            }
        }
        NSLog(@"See you Soon");
 
    }
    return 0;
}
