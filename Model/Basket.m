//
//  Basket.m
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Basket.h"

@implementation Basket

@synthesize basketOfFruit = _basketOfFruit;

-(id) initWithArray: (NSMutableArray *) array {
    self = [super init];
    if(self) {
        [self setBasketOfFruit: array];
    }
    return self;
}

-(BasketIterator *) iterator {
    return [[BasketIterator alloc] initWithArray: [self basketOfFruit]];
}

-(NSInteger) countFruits {
    return _basketOfFruit.count;
}

-(Basket*) putFruit: (NSObject<Fruit>*) fruit {
    [_basketOfFruit addObject: fruit];
    return self;
}
@end
