//
//  ViewController.m
//  FISAutolayout
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *buttonLabel;

@property (weak, nonatomic) IBOutlet UITextView *textLabel;

@property (weak, nonatomic) IBOutlet UIButton *rightButtonLabel;

@end

@implementation ViewController


//left button 10 pts form the left and bottom
//right button 10 pts form right and bottom
//default width and height

//uitextview 20 pts from the top
    //10 pts form left, right
//20 pts fromt he bottom of the UIButton


- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.buttonLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.rightButtonLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.textLabel.translatesAutoresizingMaskIntoConstraints = NO;

    [self.buttonLabel removeConstraints:self.buttonLabel.constraints];
    [self.rightButtonLabel removeConstraints:self.rightButtonLabel.constraints];
    [self.textLabel removeConstraints:self.textLabel.constraints];
    [self.view removeConstraints:self.view.constraints];
    
    [self.buttonLabel.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10.0].active = YES;
    [self.buttonLabel.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10.0].active = YES;
    
    [self.rightButtonLabel.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10.0].active = YES;
    [self.rightButtonLabel.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10.0].active = YES;

    [self.textLabel.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
    [self.textLabel.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10.0].active = YES;
    [self.textLabel.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10.0].active = YES;
    [self.textLabel.bottomAnchor constraintEqualToAnchor:self.buttonLabel.topAnchor constant:-20.0].active = YES;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
