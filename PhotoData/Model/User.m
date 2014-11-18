//
//  User.m
//  PhotoData
//
//  Created by Krt on 14-9-26.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import "User.h"

static NSString * const IdentifierKey=@"identifier";
static NSString * const UsernameKey  =@"username";
static NSString * const FirstNameKey =@"firstname";
static NSString * const LastNameKey  =@"lastname";
static NSString * const PhotoKey     =@"photos";


@implementation User

-(NSString *)description
{
    NSString *formatString =@"<%@: %p>(%lld) \"%@\"";
    return [NSString stringWithFormat:formatString,[self class],self,(long long)self.identifier,self.username];
}
-(void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeInt64 :self.identifier forKey:IdentifierKey];
    [coder encodeObject:self.username   forKey:UsernameKey];
    [coder encodeObject:self.firstName  forKey:FirstNameKey];
    [coder encodeObject:self.lastName   forKey:LastNameKey];
    [coder encodeObject:self.photos     forKey:PhotoKey];
}
-(BOOL)requiresSecureCoding
{
    return YES;
}
-(id)initWithCoder:(NSCoder *)coder
{
    self =[super init];
    if (self) {
        self.identifier =[coder decodeInt64ForKey:IdentifierKey];
        self.username   =[coder decodeObjectOfClasses:[NSString class] forKey:UsernameKey];
        self.firstName  =[coder decodeObjectOfClasses:[NSString class] forKey:FirstNameKey];
        self.lastName   =[coder decodeObjectOfClasses:[NSString class] forKey:LastNameKey];
        self.photos     =[coder decodeObjectOfClasses:[NSString class] forKey:PhotoKey];
        
    }
    return self;
}

-(NSString *)fulllName
{
    return [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
}
-(NSUInteger)numberOfPhotoTaken
{
    return self.photos.count;
}


@end
