//
//  ViewController.h
//  AppleBasketMobile
//
//  Created by Admin on 20.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Basket.h"

@interface ViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property Basket *basket;

@end

