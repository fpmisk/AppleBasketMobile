//
//  Helper.m
//  AppleBasketMobile
//
//  Created by Admin on 20.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"
#import "Apple.h"
#import "Orange.h"

@implementation Helper

@synthesize fruitBasket;

#pragma mark Singleton Methods

+ (id)instance {
    static Helper *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (id)init {
    if (self = [super init]) {
        NSMutableArray *fruitArray = [[NSMutableArray alloc] initWithObjects:
                                      [[Apple alloc] initWithColor: greenColor],
                                      [[Apple alloc] initWithColor: redColor],
                                      [[Orange alloc] initWithColor: orangeColor],
                                      [[Apple alloc] initWithColor: yellowColor],
                                      nil];
        
        fruitBasket = [[Basket alloc] initWithArray: fruitArray];
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}

@end