//
//  Photo.h
//  PhotoData
//
//  Created by Krt on 14-9-26.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <Foundation/Foundation.h>

@class User;

@interface Photo : NSObject<NSCoding>

@property (nonatomic) int64_t identifider;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,strong) NSDate* creationDate;
@property (nonatomic) double rating;

@property (nonatomic,weak) User* user;

-(NSString *)authorFullName;
-(double)adjustedRating;

@end
