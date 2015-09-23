//
//  FruitDetailsViewController.m
//  AppleBasketMobile
//
//  Created by Admin on 21.09.15.
//  Copyright (c) 2015 bsu.fpmi. All rights reserved.
//Users/admin/Documents/9 sem/SC/AppleBasketMobile/AppleBasketMobile/Controllers/FruitDetailsViewController.h/

#import "FruitDetailsViewController.h"

@interface FruitDetailsViewController ()

@end

@implementation FruitDetailsViewController

@synthesize fruit;
NSMutableArray *detailsArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Fruit detail";
    self.detailsTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.detailsTableView.separatorColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[fruit getFuitDetails] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"FruitDetailCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier: simpleTableIdentifier];
    }
    
    NSDictionary *dic = [fruit getFuitDetails];
    NSArray *keys = [dic allKeys];
    NSString *key = [keys objectAtIndex:indexPath.row];
    cell.textLabel.text = key;
    cell.detailTextLabel.text = [[NSString alloc] initWithFormat:@"%@", [dic objectForKey:key]];
    return cell;
}
@end
