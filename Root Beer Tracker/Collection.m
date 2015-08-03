//
//  Collection.m
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/15/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import "Collection.h"
#import "RootBeer.h"

@implementation Collection

- (id)init {
    _rootBeers = [[NSMutableArray alloc]init];
    return self;
}
-(NSInteger)howMany:(Collection*)collection
{
    return [self.rootBeers count];
}
@end
