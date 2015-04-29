//
//  MMACinemasViewController.m
//  Lecture5-1
//
//  Created by Desislava Stoyanova on 4/8/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import "MMACinemasViewController.h"

@interface MMACinemasViewController ()

@end

@implementation MMACinemasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Cinemas";
    
    [self.cinemaImage1 setImage:[UIImage imageNamed:@"cinemacity.jpg"]];
    [self.cinemaImage2 setImage:[UIImage imageNamed:@"imax.jpg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MMAProgramViewController* destViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"CinemaCityProgram"]) {
        destViewController.title = @"Cinema City";
        destViewController.firstMovie = @"Fast and Furious 7";
        
    }
    else if ([segue.identifier isEqualToString:@"ImaxCinemaProgram"]) {
        [destViewController setTitle:@"Imax"];
        destViewController.firstMovie = @"Pretty woman";
    }
}

@end
