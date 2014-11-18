//
//  RatingCell.m
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import "RatingCell.h"

static const int MaximumNumberOfStars =5;
static const float InactiveStarOpacity=.2;





@implementation RatingCell

+(UINib *)nib
{
    return [UINib nibWithNibName:@"RatingCell" bundle:nil];
}


//- (void)awakeFromNib {
//    // Initialization code
//    
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}


-(void)setRating:(double)rating
{
    if (self.rating==rating) {
        return;
    }
    self.rating=rating;
    [self updateForRating:rating];
}
-(void)updateForRating:(double)rating
{
    NSUInteger numberOfStars =(NSUInteger)ceilf((float)(rating * MaximumNumberOfStars));
    for (NSUInteger idx=0;idx<MaximumNumberOfStars ;idx++) {
        UIView *starView =self.contentView.subviews[idx];
        starView.alpha =numberOfStars >idx ?1:InactiveStarOpacity;
    }
}
@end
