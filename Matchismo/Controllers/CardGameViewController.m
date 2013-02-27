//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Barry Keenan on 24/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic, strong) Deck *deck;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;

@end

@implementation CardGameViewController

- (Deck *)deck
{
    if (!_deck) _deck = [[PlayingCardDeck alloc] init];
    return _deck;
}

- (void)setCardButtons:(NSArray *)cardButtons{
	_cardButtons = cardButtons;
	for (UIButton *cardButton in self.cardButtons) {
		Card *card = [self.deck drawRandomCard];
		[cardButton setTitle:card.contents forState:UIControlStateSelected];
	}
}

- (IBAction)flipCard:(UIButton *)cardBtn {
    cardBtn.selected = !cardBtn.selected;
	self.flipCount++;
}

- (void)setFlipCount:(int)flipCount{
	_flipCount = flipCount;
	self.flipsLabel.text = [NSString stringWithFormat: @"Flips: %d", self.flipCount];
	NSLog(@"flips updated to %d", self.flipCount);
}

@end