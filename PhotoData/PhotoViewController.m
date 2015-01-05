//
//  PhotoViewController.m
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import "PhotoViewController.h"
#import  "Photo.h"
#import  "User.h"
#import "DetailsViewController.h"
#import "DetailViewController.h"



@interface PhotoViewController ()<DetailsViewControllerDelegate>

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateForPhoto];
    
    // Do any additional setup after loading the view from its nib.
}
-(void)updateForPhoto
{
    self.navigationItem.title =self.photo.name;
    self.authorLabel.text=self.photo.authorFullName;
    self.photoTakenLabel.text=[NSString stringWithFormat:@"%d",self.photo.user.numberOfPhotoTaken];
}
-(void)addPhotoDetailsTableView
{
    DetailsViewController *details=[[DetailsViewController alloc]init];
    details.photo=self.photo;
    details.delegate=self;
    [self addChildViewController:details];
    CGRect frame =self.view.bounds;
    frame.origin.y=110;
    details.view.frame=frame;
    [self.view addSubview:details.view];
    [details didMoveToParentViewController:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
