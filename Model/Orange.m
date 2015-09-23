
#import <Foundation/Foundation.h>
#import "Orange.h"

#import <stdlib.h>
#import <time.h>

@implementation Orange

@synthesize seed = _seed;
@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(id) init {
    if(self = [super init]) {
        self.currentColor = greenColor;
        srandom(time(NULL));
        self.seed = (random() % 30) + 10;
        self.isHang = true;
        NSLog(@"Orange was created");
    }
    return self;
}

-(id) initWithColor: (FruitColor) fruitColor {
    if(self = [self init]) {
        [self setCurrentColor: (FruitColor) fruitColor];
        NSLog(@"Orange was created");
    }
    return self;
}

-(BOOL) drop {
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"Orange drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    switch ([self currentColor]) {
        case greenColor:
            [self setCurrentColor: (FruitColor) orangeColor];
            NSLog(@"Orange become orange from green");
            break;
        case orangeColor:
            NSLog(@"Orange is orange :)");
            break;

        default:
            break;
    }
}

-(NSString*) getName {
    NSString* color = @"";
    switch ([self currentColor]) {
        case greenColor:
            color = @"Green";
            break;
        case orangeColor:
            color = @"Orange";
            break;
        case redColor:
            color = @"Red";
            break;
        case yellowColor:
            color = @"Yellow";
            break;
            
        default:
            break;
    }
    return [color stringByAppendingString: @" orange"];
}

-(NSDictionary*) getFuitDetails {
    NSString* color = @":)";
    switch ([self currentColor]) {
        case greenColor:
            color = @"Green";
            break;
        case orangeColor:
            color = @"Oragne";
            break;
        case redColor:
            color = @"Red";
            break;
        case yellowColor:
            color = @"Yellow";
            break;
    }
    return @{@"Color": color,
             @"Seed count" : [[NSNumber alloc] initWithInt: self.seed]};
}
@end