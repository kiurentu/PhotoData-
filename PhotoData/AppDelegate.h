//
//  AppDelegate.h
//  PhotoData
//
//  Created by Krt on 14-9-26.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Store;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

+(instancetype)sharedDelegate;

@property (strong, nonatomic) UIWindow *window;

@property (readonly,strong,nonatomic)Store *store;


@end

