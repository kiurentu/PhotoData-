//
//  User.h
//  PhotoData
//
//  Created by Krt on 14-9-26.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject<NSCoding>


@property (nonatomic) ino64_t identifier;
@property (nonatomic,copy)NSString *username;
@property (nonatomic,copy)NSString *firstName;
@property (nonatomic,copy)NSString *lastName;
@property (nonatomic,copy)NSArray *photos;

-(NSString *)fulllName;
-(NSUInteger)numberOfPhotoTaken;

@end
