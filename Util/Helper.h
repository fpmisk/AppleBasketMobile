//
//  Helper.h
//  AppleBasketMobile
//
//  Created by Admin on 19.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Basket.h"

@interface Helper : NSObject {
    Basket *fruitBasket;
}

@property (nonatomic, retain) Basket *fruitBasket;

+ (Helper*) instance;

@end