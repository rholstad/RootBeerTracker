//
//  RootBeer.h
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/15/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RootBeer : NSObject <NSCoding>

@property NSString *name;
@property NSString *breweryLocation;
@property NSDate *purchaseDate;
@property NSString *purchaseLocation;
@property double rating;
@property UIImage *photo;

+ (RootBeer*)random;
@end
