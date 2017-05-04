//
//  main.m
//  Assignment#6
//
//  Created by yoshitokomiya on 2017-04-26.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "Dice.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"Throw five of Dice: ⚀ ⚀ ⚂ ⚃ ⚄ ⚅");
        NSLog(@"Let's get started! Type roll!");
        
        GameController *gc = [GameController new];
        
        while (true)
        {
            char inputUser[255];
            fgets(inputUser, 255, stdin);
            
            NSString *inputString = [NSString stringWithUTF8String:inputUser];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

            if ([inputString compare:@"roll"] == NSOrderedSame)
            {
                [gc throwAllDice];
                
                while (true) {
                    
                    // waiting for user input
                    NSLog(@"input 0 to 4");
                    char inputUser1[255];
                    fgets(inputUser1, 255, stdin);
                    
                    NSString *inputString1 = [NSString stringWithUTF8String:inputUser1];
                    inputString1 = [inputString1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                    
                    if([inputString1 compare:@"quit"] == NSOrderedSame)
                    {
                        break;
                    }
                    else
                    {
                        if([inputString1 integerValue] < 5 || [inputString1 integerValue] >= 0)
                        {
                                [gc holdDice:[inputString1 integerValue]];
                        }
                        else
                        {
                            NSLog(@"Please type the number of dice's index!");
                        }
                    }
                    [gc showHeldDice];
                    NSLog(@"your score: %ld",[gc scoreCalculator]);
                }
            }
            
            else if ([inputString compare:@"reset"] == NSOrderedSame)
            {
                [gc resetDice];
            } else {
                NSLog(@"Type correct command:---");
            }
            
        }
    }
    return 0;
}
