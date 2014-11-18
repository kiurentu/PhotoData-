//
//  DetailsViewController.h
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@protocol DetailsViewControllerDelegate

-(void)didSelectPhotoAttributeWithKey:(NSString *)key;

@end


@interface DetailsViewController : UITableViewController
@property(nonatomic,strong)Photo *photo;

@property(nonatomic,weak)id <DetailsViewControllerDelegate>delegate;




@end
