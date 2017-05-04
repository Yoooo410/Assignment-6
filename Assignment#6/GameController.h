//
//  GameController.h
//  Assignment#6
//
//  Created by yoshitokomiya on 2017-04-26.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray* myDice;
@property NSMutableArray* heldDice;
@property NSInteger count;
@property NSInteger scoreSum;

- (void) holdDice:(NSInteger) inputIndex;
- (void) throwAllDice;
- (void) showHeldDice;
- (NSInteger) scoreCalculator;
- (void) resetDice;

@end
