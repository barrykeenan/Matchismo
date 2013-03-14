#import "Card.h"

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(CardSpec)

describe(@"Card", ^{
    __block Card *sut;

    beforeEach(^{
		
    });
	
	it(@"returns human readable contents", ^{
		sut = [[Card alloc] init];
		sut.contents = @"ace of spades";
		
        sut.contents should equal(@"ace of spades");
    });
});

SPEC_END
