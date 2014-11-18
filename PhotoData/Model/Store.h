//
//  Store.h
//  PhotoData
//
//  Created by Krt on 14-9-26.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject

+(instancetype)store;

@property (readonly,nonatomic,strong) NSArray* photos;
@property (readonly,nonatomic,strong) NSArray* users;

-(NSArray *)srotedPhotos;




@end
