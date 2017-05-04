//
//  Dice1.h
//  Assignment#6
//
//  Created by yoshitokomiya on 2017-04-28.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

#import "GameController.h"

@interface Dice : NSObject

@property NSInteger diceValue;

- (void) throwDice;
- (NSInteger) showDice;
- (NSString *)die;


@end
