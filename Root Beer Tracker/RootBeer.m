//
//  RootBeer.m
//  Root Beer Tracker
//
//  Created by Ryan Holstad on 6/15/15.
//  Copyright (c) 2015 Ryan Holstad. All rights reserved.
//

#import "RootBeer.h"

@implementation RootBeer


-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.name forKey:@"name"];
    [encoder encodeObject:self.breweryLocation forKey:@"breweryLocation"];
    [encoder encodeObject:self.purchaseDate forKey:@"purchaseDate"];
    [encoder encodeObject:self.purchaseLocation forKey:@"purchaseLocation"];
    [encoder encodeDouble:self.rating forKey:@"rating"];
    [encoder encodeObject:self.photo forKey:@"photo"];
}

- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        self.name = [decoder decodeObjectForKey:@"name"];
        self.breweryLocation = [decoder decodeObjectForKey:@"breweryLocation"];
        self.purchaseDate = [decoder decodeObjectForKey:@"purchaseDate"];
        self.purchaseLocation = [decoder decodeObjectForKey:@"purchaseLocation"];
        self.rating = [decoder decodeDoubleForKey:@"rating"];
        self.photo = [decoder decodeObjectForKey:@"photo"];
    }
    return self;
}
+ (instancetype)object
{
    RootBeer *rb = [[super alloc]init];
    return rb;
}
+ (RootBeer*)random
{
    RootBeer *rb = [RootBeer object];
    rb.name = [NSString stringWithFormat:@"%c", arc4random_uniform(26) + 'a'];
    rb.breweryLocation = [NSString stringWithFormat:@"%c", arc4random_uniform(26) + 'a'];
    rb.purchaseDate = [NSDate date];
    rb.purchaseLocation = [NSString stringWithFormat:@"%c", arc4random_uniform(26) + 'a'];
    rb.rating = 2;
    rb.photo = [UIImage imageNamed:@"IMG_7499"];
    return rb;
}
@end
