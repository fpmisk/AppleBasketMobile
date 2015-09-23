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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [basket countFruits];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if ([iterator hasNext]) {
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:  simpleTableIdentifier];
        }
    
        cell.textLabel.text = [[iterator next] getName];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    UIViewController *view1 = [self.storyboard instantiateViewControllerWithIdentifier:@"FruitDetailViewController"];
//    [self.navigationController pushViewController:view1 animated:YES];
//    [self presentViewController:view1 animated:YES completion:nil];
    [self performSegueWithIdentifier:@"FruitDetailController" sender:self];
}
@end
