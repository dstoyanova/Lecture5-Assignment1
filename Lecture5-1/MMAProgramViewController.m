//
//  MMAProgramViewController.m
//  Lecture5-1
//
//  Created by Desislava Stoyanova on 4/8/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import "MMAProgramViewController.h"

@interface MMAProgramViewController () {
    NSString* movieTime;
}

@end

@implementation MMAProgramViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.firstMovieLabel.text = self.firstMovie;
    
    self.button1.tag = 1;
    self.button1.hidden = YES;
    self.button2.tag = 2;
    self.button2.hidden = YES;
    self.button3.tag = 3;
    self.button3.hidden = YES;
    self.button4.tag = 4;
    self.button4.hidden = YES;
    self.button5.tag = 5;
    self.button5.hidden = YES;
    
    self.confirmButton.hidden = YES;
    
    self.movieDatePicker.hidden = YES;
    
    movieTime = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)orderTickets:(id)sender {
    self.button1.hidden = NO;
    self.button2.hidden = NO;
    self.button3.hidden = NO;
    self.button4.hidden = NO;
    self.button5.hidden = NO;
}

- (IBAction)orderTicketsForProjection:(id)sender {
    self.movieDatePicker.hidden = NO;
    self.confirmButton.hidden = NO;
    UIButton* buttonPressed = (UIButton*) sender;
    movieTime = buttonPressed.titleLabel.text;
}

- (IBAction)confirmOrder:(id)sender {
    NSDate* movieDate = self.movieDatePicker.date;
    NSString* movieDateString = [movieDate description];
    NSLog(@"Thickets ordered for %@ on %@ %@", self.firstMovieLabel.text, movieDateString, movieTime);
}

@end
