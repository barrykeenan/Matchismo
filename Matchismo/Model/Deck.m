//
//  Deck.m
//  Matchismo
//
//  Created by Barry Keenan on 24/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (card) {
        if (atTop) [self.cards insertObject:card atIndex:0];
        else [self.cards addObject:card];
    }
}

- (id)drawRandomCard
{
    id randomCard = nil;
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

@end