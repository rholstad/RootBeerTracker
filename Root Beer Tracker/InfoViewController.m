//
//  InfoViewController.m
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/11/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import "InfoViewController.h"
#import "EDStarRating.h"
#import "RootBeer.h"

@interface InfoViewController ()

//@property UIImageView* photo;
@property UIImage* myImg;
@property UIImage* myResizedImg;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *breweryLocation;
@property (weak, nonatomic) IBOutlet UILabel *purchaseDate;
@property (weak, nonatomic) IBOutlet UILabel *purchaseLocation;
@property (weak, nonatomic) IBOutlet EDStarRating *starRating;
@property (strong,nonatomic) NSArray *colors;
@property(nonatomic, retain) UIBarButtonItem *backBarButtonItem;

@end

@implementation InfoViewController
@synthesize starRating=_starRating;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor redColor];
    
    RootBeer *newBeer = [[RootBeer alloc]init];
    newBeer.name = @"Sprecher";
    newBeer.breweryLocation = @"Glendale, WI";
    newBeer.purchaseDate = [NSDate dateWithTimeIntervalSinceReferenceDate:118800];
    newBeer.purchaseLocation = @"Long Island, NY";
    newBeer.rating = 1.5;
    newBeer.photo = [UIImage imageNamed: @"Sprecher"];
    
    self.colors = @[[UIColor colorWithRed:0.11f green:0.38f blue:0.94f alpha:1.0f]];
    _starRating.backgroundColor  = [UIColor clearColor];
    _starRating.starImage = [[UIImage imageNamed:@"star-template"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    _starRating.starHighlightedImage = [[UIImage imageNamed:@"star-highlighted-template"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    _starRating.maxRating = 5.0;
    _starRating.delegate = self;
    _starRating.horizontalMargin = 15.0;
    _starRating.editable=YES;
    _starRating.rating= newBeer.rating;
    _starRating.displayMode=EDStarRatingDisplayHalf;
    _starRating.tintColor = self.colors[0];
    [_starRating  setNeedsDisplay];

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateStyle = NSDateFormatterMediumStyle;
    
    
    
    [self.photo setImage:newBeer.photo];
    CGSize imageSize        = CGSizeMake(1000.0, 800.0);
    CGSize imageViewSize    = CGSizeMake(280.0, 100.0);
    
    CGFloat correctImageViewHeight = (imageViewSize.width / imageSize.width) * imageSize.height;
    
    self.photo.frame = CGRectMake(  self.photo.frame.origin.x,
                                      self.photo.frame.origin.x,
                                      CGRectGetWidth(self.photo.bounds),
                                      correctImageViewHeight);
    self.name.text = newBeer.name;
    self.breweryLocation.text = newBeer.breweryLocation;
    self.purchaseDate.text = [dateFormatter stringFromDate:newBeer.purchaseDate];
    self.purchaseLocation.text = newBeer.purchaseLocation;
    
}
- (void)viewDidUnload
{
    [self setStarRating:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
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
