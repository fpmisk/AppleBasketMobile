

#import <Foundation/Foundation.h>

@protocol Tree <NSObject>

@property NSMutableArray *arrayOfLeaf;
@property NSNumber *age;
@property NSNumber *countOfLeaf;

-(bool) dropLeaf: (Leaf *) leaf;
-(void) addLeaf: (Leaf *) leaf;
-(void) shake;
-(void) grow;

@end
