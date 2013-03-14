#import "Card.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(CardSpec)

describe(@"Card", ^{
    __block Card *sut;

    beforeEach(^{
		sut = [[Card alloc] init];
		sut.contents = @"ace of spades";
    });
	
	it(@"returns human readable contents", ^{
        sut.contents should equal(@"ace of spades");
    });
	
	it(@"matches another card with the same contents", ^{
		Card *another_card = [[Card alloc] init];
		another_card.contents = @"ace of spades";
		
		int score = [sut match:@[another_card]];
		
        score should equal(1);
    });
	
	it(@"doesnt match another card with different contents", ^{
		Card *another_card = [[Card alloc] init];
		another_card.contents = @"queen of diamonds";
		
		int score = [sut match:@[another_card]];
		
        score should equal(0);
    });

});

SPEC_END
