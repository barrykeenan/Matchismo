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
});

SPEC_END
