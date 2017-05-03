//
//  UserInput.m
//  maths_game_p1
//
//  Created by Mandeep on 2017-05-02.
//  Copyright © 2017 Mandeep. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

+(NSString *) getSubmission{
    char inputChars[255];
    printf("Please enter a response: ");
    fgets(inputChars, 255, stdin);
    printf("You've submitted: %s \n", inputChars);
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputString;
}

@end
