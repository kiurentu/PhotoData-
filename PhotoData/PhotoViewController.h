//
//  PhotoViewController.h
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Photo;

@interface PhotoViewController : UIViewController

@property (nonatomic,strong)Photo *photo;

@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *photoTakenLabel;





@end
