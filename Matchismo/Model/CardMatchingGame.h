//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by Barry Keenan on 27/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
#import "Card.h"

@interface CardMatchingGame : NSObject

- (id) initWithCardCount:(NSUInteger)count
			   usingDeck:(Deck *)deck;

- (void)flipCardAtIndex:(NSUInteger)index;

- (Card *)cardAtIndex:(NSUInteger)index;

@property(readonly, nonatomic) int score;

@end