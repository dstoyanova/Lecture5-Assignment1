//
//  ViewController.m
//  Lecture5-1
//
//  Created by Desislava Stoyanova on 4/8/15.
//  Copyright (c) 2015 Desislava Stoyanova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Sign in";
    
    self.passwordTextField.secureTextEntry = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([identifier isEqualToString:@"CinemasScreen"]) {
        BOOL segueShouldOccur = ([self.usernameTextField.text isEqualToString:@"test"] &&
                                 [self.passwordTextField.text isEqualToString:@"123456"]);
        if (!segueShouldOccur) {
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"The credentials you have entered are invalid."
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:@"Cancel", nil];
            
            [alert show];
            
            return NO;
        }
    }
    return YES;
}

@end
