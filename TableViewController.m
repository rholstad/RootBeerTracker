//
//  TableViewController.m
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/12/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import "TableViewController.h"
#import "RootBeer.h"
#import "<Parse/Parse.h>"
#import "Collection.h"

@interface TableViewController ()

@property NSMutableArray *openCellIndexPaths;
@property BOOL isRefreshingCollection;

@end

@implementation TableViewController
@synthesize names,collectionTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    PFObject *testObject = [PFObject objectWithClassName:@"RootBeer"];
    testObject[@"name"] = @"bar";
    [testObject saveInBackground];
    self.tableView.contentInset = UIEdgeInsetsMake(44,0,0,0);
    //self.collectionTableView.backgroundColor = [UIColor colorWithRed:0.93 green:0.97 blue:0.95 alpha:1.0];
    
    self.openCellIndexPaths = [NSMutableArray array];
    
    Collection *collection = [[Collection alloc]init];
    for (int i = 0; i<4; ++i) {
        [collection.rootBeers addObject:[RootBeer random].name];
    }
    names = collection.rootBeers;
    //[self refreshRoster];
    
    //self.collectionTableView.tableFooterView = [self footerView];


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [names count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [names objectAtIndex:indexPath.row];
    return cell;
}
- (void)fetchedRootBeers:(NSArray*)objects error:(NSError*)error
{
    NSArray *sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"name"
                                                               ascending:YES],
                                 [NSSortDescriptor sortDescriptorWithKey:@"rating"
                                                               ascending:YES],
                                 [NSSortDescriptor sortDescriptorWithKey:@"purchaseDate"
                                                               ascending:YES]];
    self.names = [objects sortedArrayUsingDescriptors:sortDescriptors];
    self.openCellIndexPaths = [NSMutableArray array];
    [self.collectionTableView reloadData];
}
- (void)refreshRoster
{
    if (self.isRefreshingCollection) return; //patience young grasshoper.
    
    self.isRefreshingCollection = YES;
    
}

@end
