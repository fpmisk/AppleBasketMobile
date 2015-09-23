//
//  BasketIterator.m
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "BasketIterator.h"

@implementation BasketIterator

@synthesize arrayOfFruit = _arrayOfFruit;
@synthesize currentNumber = _currentNumber;
@synthesize median = _median;

-(id) initWithArray: (NSMutableArray *) array {
    if(self = [super init]) {
        self.arrayOfFruit = array;
        self.median = [array count]/2 + 1;
        self.currentNumber = 0;
        NSLog(@"BasketIterator was created");
    }
    return self;
}

-(bool) hasNext {
    if([self.arrayOfFruit count] == 0)
        return false;
    if(self.currentNumber == self.median)
        return false;
    
    if(self.currentNumber == 0) {
        self.currentNumber = 1;
        return true;
    }
    int numberInArray = self.currentNumber < self.median ?
                            2 * self.median - self.currentNumber :
                            2 * self.median - self.currentNumber + 1;

    self.currentNumber = numberInArray;
    return true;
}

-(NSObject<Fruit>*) next {
    int index = self.currentNumber;
    if([self.arrayOfFruit count] % 2 == 0 && self.currentNumber > self.median) {
        index--;
        if(index == self.median)
            self.currentNumber = self.median;
    }
    return [[self arrayOfFruit] objectAtIndex:index - 1];
    //return [[NSNumber alloc]initWithInt: index];
}

@end
