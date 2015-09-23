//
//  BasketIterator.h
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@interface BasketIterator : NSObject

@property NSMutableArray * arrayOfFruit;
@property int currentNumber;
@property int median;

-(id) initWithArray: (NSMutableArray *) array;
-(bool) hasNext;
-(NSObject<Fruit>*) next;

@end
