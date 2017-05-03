//
//  Qfactory.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-03.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "Qfactory.h"
#import "AdditionQ.h"
#import "SubtractionQ.h"
#import "MultiplicationQ.h"
#import "DivisionQ.h"





@implementation Qfactory

-(Game *)generateRQ{
    NSArray *qType = @[@"AdditionQ",@"SubtractionQ",@"MultiplicationQ",@"DivisionQ"];
    NSInteger qPicker = arc4random_uniform(3);
    NSString * qSelected = qType[qPicker];
    
    Game *playMe = [[NSClassFromString(qSelected) alloc]init];
    
    return playMe;
}


@end
