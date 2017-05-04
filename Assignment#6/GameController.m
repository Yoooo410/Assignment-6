//
//  GameController.m
//  Assignment#6
//
//  Created by yoshitokomiya on 2017-04-26.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _heldDice = [NSMutableArray array];
        _myDice = [NSMutableArray array];
        _count = 0;
        _scoreSum = 0;
        
        for (int i = 0; i < 5; i++) {
            Dice *dice = [Dice new];
            [_myDice addObject:dice];
            [_heldDice addObject:[NSNull null]];
        }
    }
    return self;
}

- (void) holdDice:(NSInteger) inputIndex
{
    
    [_heldDice replaceObjectAtIndex:inputIndex withObject:_myDice[inputIndex]];
    
}

- (void) throwAllDice
{
    // count up how many throw dice
    // until 5 times
    if (_count < 5)
    {
        for (int i = 0; i < 5; i++)
        {

            if (_heldDice[i] != [NSNull null])
            {
                NSLog(@"[%@]", [_heldDice[i] die]);
            }
            else
            {
                [_myDice[i] throwDice];
                NSLog(@"%@", [_myDice[i] die]);
            }
        }
        _count++;
        NSLog(@"Choose the index number of the dice which you want to hold!");
    }
    else
    {
        NSLog(@"You cannot roll the dices over five times!");
    }
}


- (void) showHeldDice
{
    for (int i = 0; i < 5; i++) {
        
        if (_heldDice[i] != [NSNull null])
        {
            NSLog(@"[%@]", [_heldDice[i] die]);
        }
        else
        {
            NSLog(@"%@", [_myDice[i] die]);
        }
    }
}

- (NSInteger) scoreCalculator
{
    for (int i = 0; i < 5; i++) {

        if (_heldDice[i] != [NSNull null])
        {
            if ([_heldDice[i] showDice] == 3) {
                _scoreSum += 0;
            }
            else{
                _scoreSum += [_heldDice[i] showDice];
            }
        }
    }
    return _scoreSum;
}


- (void) resetDice
{
    [_heldDice removeAllObjects];
}


@end
