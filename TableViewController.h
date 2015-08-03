//
//  TableViewController.h
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/12/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic,retain) NSMutableArray *names;
@property (weak,nonatomic) IBOutlet UITableView *collectionTableView;

@end
