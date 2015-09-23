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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Fruit detail";
//    [backButton addTarget:self action:@selector(navigateBack:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)navigateBack:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
