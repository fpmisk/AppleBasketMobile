#import <Foundation/Foundation.h>

typedef enum _LeafColor
{
    leafOfRed,
    leafOfGreen,
    leafOfYellow
}LeafColor;

@interface Leaf : NSObject

@property LeafColor currentColor;
@property BOOL isHang;
-(id) init;
-(BOOL) drop;
-(void) grow;


@end