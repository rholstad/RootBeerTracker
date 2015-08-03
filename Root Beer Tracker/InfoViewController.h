//
//  InfoViewController.h
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/11/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EDStarRating.h"
@interface InfoViewController : UIViewController<EDStarRatingProtocol>
@property (strong, nonatomic) IBOutlet UIImageView *photo;
@end
