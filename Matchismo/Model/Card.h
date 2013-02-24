//
//  Card.h
//  Matchismo
//
//  Created by Barry Keenan on 24/02/13.
//  Copyright (c) 2013 Craft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

- (NSInteger)match:(NSArray *)otherCards;

@end
