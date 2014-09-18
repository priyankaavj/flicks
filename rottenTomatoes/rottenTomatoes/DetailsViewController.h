//
//  DetailsViewController.h
//  rottenTomatoes
//
//  Created by Priyankaa Vijayakumar on 9/17/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property NSDictionary *movieData;

@property (weak, nonatomic) IBOutlet UILabel *detailsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsSynopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *detailsPosterView;
@property (weak, nonatomic) IBOutlet UIScrollView *detailScrollView;

@end
