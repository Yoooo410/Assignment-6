//
//  Dice1.m
//  Assignment#6
//
//  Created by yoshitokomiya on 2017-04-28.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self throwDice];
    }
    return self;
}


- (void) throwDice
{
    NSInteger randNum = arc4random_uniform(6) + 1;
    _diceValue = randNum;
}

- (NSInteger) showDice
{
    return  _diceValue;
}

- (NSString *) die {
    switch (_diceValue) {
        case 1:
            return @"⚀";
            break;
        case 2:
            return @"⚁";
            break;
        case 3:
            return @"⚂";
            break;
        case 4:
            return @"⚃";
            break;
        case 5:
            return @"⚄";
            break;
        case 6:
            return @"⚅";
            break;
        default:
            return @"Err";
            break;
    }
}

//- (void) throwDice
//{
//    char inputUser[255];
//    fgets(inputUser, 255, stdin);
//
//    NSString *inputString = [NSString stringWithUTF8String:inputUser];
//    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
//
//    if ([inputString compare:@"roll"] == NSOrderedSame)
//    {
//        NSMutableArray* dice = [NSMutableArray arrayWithObjects:@"⚀", @"⚀", @"⚂", @"⚃", @"⚄", @"⚅",nil];
//
//        for (int i = 0; i < 5; i++) {
//            NSInteger randNum = arc4random_uniform(4);
//            NSString *faceDice = [dice objectAtIndex:randNum];
//            NSLog(@"%@",faceDice);
//        }
//    }
//}

@end
