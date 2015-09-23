//
//  Fruit.h
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol Fruit <NSObject>
typedef enum _FruitColor {
    redColor,
    greenColor,
    yellowColor,
    orangeColor
} FruitColor;

@property FruitColor currentColor;
@property BOOL isHang;

-(id) initWithColor: (FruitColor) fruitColor;
-(BOOL) drop;
-(void) grow;
-(NSString*) getName;
-(NSDictionary*) getFuitDetails;

@end
