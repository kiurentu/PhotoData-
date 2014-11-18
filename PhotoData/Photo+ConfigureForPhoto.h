//
//  Photo+ConfigureForPhoto.h
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoCell.h"

@class Photo;

@interface PhotoCell (ConfigureForPhoto)

-(void)configureForPhoto:(Photo *)photo;

@end
