#import "Apple.h"
#import <stdlib.h>
#import <time.h>

@implementation Apple

@synthesize seed = _seed;
@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;


-(id) init {
    if(self = [super init]) {
        [self setCurrentColor: (FruitColor) greenColor];
        srandom(time(NULL));
        [self setSeed: [[NSNumber alloc] initWithInt: (random() % 30) + 10]];
        [self setIsHang: true];
        NSLog(@"Apple was created");
    }
    return self;
}

-(id) initWithColor: (FruitColor) fruitColor {
    if(self = [self init]) {
        [self setCurrentColor: (FruitColor) fruitColor];
        NSLog(@"Apple was created");
    }
    return self;
}

-(BOOL) drop {
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"Apple drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    switch ([self currentColor]) {
        case greenColor:
            [self setCurrentColor: (FruitColor) yellowColor];
            NSLog(@"Apple is yellow");
            break;
        case yellowColor:
            [self setCurrentColor: (FruitColor) redColor];
            NSLog(@"Apple is red");
            break;
        case redColor:
            NSLog(@"Apple is red");
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
            color = @"Oragne";
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
    return [color stringByAppendingString: @" apple"];
}

@end