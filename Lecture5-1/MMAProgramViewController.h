//
//  MMAProgramViewController.h
//  Lecture5-1
//
//  Created by Desislava Stoyanova on 4/8/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMAProgramViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *firstMovieLabel;
@property (strong, nonatomic) NSString* firstMovie;

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;

@property (weak, nonatomic) IBOutlet UIDatePicker *movieDatePicker;

@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@end
