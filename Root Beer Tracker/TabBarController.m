//
//  TabBarController.m
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/20/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem *item0 = [[UITabBarItem alloc] initWithTitle:@"Collection" image:[UIImage imageNamed:@"rsz_1rsz_patternizeimg"] tag:0];
    UITabBarItem *item1 =[[UITabBarItem alloc] initWithTitle:@"Collection" image:[UIImage imageNamed:@"rsz_1rsz_patternizeimg"] tag:1];
    [item0 setImageInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [item1 setImageInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    //tabBar.items = [NSArray arrayWithObjects:item0,item1, nil];
    [self setTabBarItem:item0];
    [self setTabBarItem:item1];
    self.selectedIndex=0;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
