//
//  FruitDetailsViewController.h
//  AppleBasketMobile
//
//  Created by Admin on 21.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fruit.h"

@interface FruitDetailsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (weak, nonatomic) IBOutlet UITableView *detailsTableView;
@property NSObject<Fruit> *fruit;

@end
