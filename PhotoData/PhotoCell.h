//
//  PhotoCell.h
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoCell : UITableViewCell

+(UINib *)nib;

@property (weak,nonatomic) IBOutlet UILabel *photoTitleLabel;

@property (weak,nonatomic) IBOutlet UILabel *photoDateLabel;


@end
