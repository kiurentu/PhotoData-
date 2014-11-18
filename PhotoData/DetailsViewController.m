//
//  DetailsViewController.m
//  PhotoData
//
//  Created by Krt on 14-10-11.
//  Copyright (c) 2014年 Krt. All rights reserved.
//

#import "DetailsViewController.h"
#import "Photo.h"
#import "RatingCell.h"

static NSString *const DetailCellIdentifier=@"DetailCell";
static NSString *const RatingCellIdentifier=@"RatingCell";
static NSString *const PhotoIdentifierKey=@"identifier";
static NSString *const PhotoRatingKey =@"adjustedRating";
static NSString *const PhotoCreationDateKey =@"creationDate";

@interface DetailsViewController ()<UITableViewDataSource,UITabBarDelegate>;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setupTableView
{
    self.tableView.dataSource=self;
    self.tableView.delegate=self;
    [self.tableView registerNib:[RatingCell nib] forCellReuseIdentifier:RatingCellIdentifier];
}
-(NSArray *)keys
{
    return @[PhotoRatingKey,PhotoIdentifierKey,PhotoCreationDateKey];
}
#pragma mark UITableViewDataSource


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
