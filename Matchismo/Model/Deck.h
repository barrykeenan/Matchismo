//
//  Deck.h
//  Matchismo
//
//  Created by Barry Keenan on 24/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (id)drawRandomCard;

@end
