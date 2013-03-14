#import "PlayingCard.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(PlayingCardSpec)

describe(@"PlayingCard", ^{
    __block PlayingCard *sut;

    beforeEach(^{
		sut = [[PlayingCard alloc] init];
    });
	
	it(@"sets valid suits", ^{
		sut.suit = @"♠";
		
		[sut.suit isEqualToString:@"♠"] should be_truthy;
    });
	
	it(@"does not set invalid suits, and gives no feedback", ^{
		sut.suit = @"a random string";
		
		[sut.suit isEqualToString:@"a random string"] should_not be_truthy;
    });
	
	describe(@"when set with a valid suit and rank", ^{
		
		beforeEach(^{
			sut = [[PlayingCard alloc] init];
			sut.suit = @"♠";
			sut.rank = 1;
		});
		
        it(@"returns human readable contents", ^{
			[sut.contents isEqualToString:@"A♠"] should be_truthy;
        });
		
		it(@"gives a low score for a suit match", ^{
			PlayingCard *another_card = [[PlayingCard alloc] init];
			another_card.suit = @"♠";
			another_card.rank = 10;
			
			int score = [sut match: @[another_card]];
			
			score should equal(1);
        });
		
		it(@"gives a high score for a rank match", ^{
			PlayingCard *another_card = [[PlayingCard alloc] init];
			another_card.suit = @"some suit";
			another_card.rank = 1;
			
			int score = [sut match: @[another_card]];
			
			score should equal(4);
        });
    });
});

SPEC_END
