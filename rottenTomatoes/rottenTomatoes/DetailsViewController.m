//
//  DetailsViewController.m
//  rottenTomatoes
//
//  Created by Priyankaa Vijayakumar on 9/17/14.
//  Copyright (c) 2014 codepath. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailScrollView.autoresizesSubviews = YES;
    self.detailScrollView.contentMode = UIViewContentModeScaleToFill;
    
    // Do any additional setup after loading the view from its nib.
    self.detailsTitleLabel.text = self.movieData[@"title"];
    self.detailsSynopsisLabel.text = self.movieData[@"synopsis"];
    
    
    NSString *posterUrl = [self.movieData valueForKeyPath:@"posters.original"];
    
    posterUrl = [posterUrl stringByReplacingOccurrencesOfString:@"tmb"
                                         withString:@"org"];
    [self.detailsPosterView setImageWithURL:[NSURL URLWithString:posterUrl]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
