//
//  PhotoCell.m
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell


+(UINib *)nib
{
    return [UINib nibWithNibName:@"PhotoCell" bundle:nil];
}
-(void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    [super setHighlighted:highlighted animated:animated];
    if(highlighted){
        self.photoTitleLabel.shadowColor =[UIColor darkGrayColor];
        self.photoTitleLabel.shadowOffset=CGSizeMake(3,3);
    }else {
        self.photoTitleLabel.shadowColor=nil;
    }
}

@end
