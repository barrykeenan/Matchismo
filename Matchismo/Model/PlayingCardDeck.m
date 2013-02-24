//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Barry Keenan on 24/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

- (id)init
{
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSInteger rank = 1; rank <= [PlayingCard maxRank]; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
    }
    return self;
}

@end