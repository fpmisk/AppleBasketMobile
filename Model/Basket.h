//
//  Basket.h
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"
#import "BasketIterator.h"

@interface Basket : NSObject

@property NSMutableArray * basketOfFruit;

-(id) initWithArray: (NSMutableArray *) array;
-(BasketIterator *) iterator;
-(NSInteger) countFruits;
-(Basket*) putFruit: (NSObject<Fruit>*) fruit;

@end
