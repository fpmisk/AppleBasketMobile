#import "Leaf.h"

@implementation Leaf

@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"Leaf drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == leafOfRed){
        NSLog(@"Leaf is red");
    }
    else if([self currentColor] == leafOfGreen){
        [self setCurrentColor: (LeafColor) leafOfYellow];
        NSLog(@"Leaf is yellow");
    }
    else if([self currentColor] == leafOfYellow){
        [self setCurrentColor: (LeafColor) leafOfRed];
        NSLog(@"Leaf is red");
    }
}
-(id) init{
    self = [super init];
    if(self)
    {
        [self setCurrentColor: (LeafColor) leafOfGreen];
        [self setIsHang: true];
        NSLog(@"Leaf was created");
    }
    return self;
}
@end