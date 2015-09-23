//
//  ViewController.m
//  AppleBasketMobile
//
//  Created by Admin on 20.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//

#import "ViewController.h"
#import "FruitDetailsViewController.h"
#import "BasketIterator.h"
#import "Helper.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize myTableView, basket;

BasketIterator *iterator;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    basket = [[Helper instance] fruitBasket];
    iterator = [basket iterator];

    self.title = @"Fruit basket";
    myTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [basket countFruits];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"FruitCellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if ([iterator hasNext]) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:  simpleTableIdentifier];
        }
    
        cell.textLabel.text = [[iterator next] getName];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"ShowFruitDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowFruitDetails"]) {
        // Get reference to the destination view controller
        FruitDetailsViewController *vc = [segue destinationViewController];
        
        NSInteger fruitIndex = [myTableView indexPathForSelectedRow].row;
        BasketIterator *it = [basket iterator];
        int index = 0;
        NSObject<Fruit> *fruit;
        while ([it hasNext]) {
            fruit = [it next];
            if (index == fruitIndex)
                break;
            index++;
        }
        [vc setFruit: fruit];
    }
}
@end
