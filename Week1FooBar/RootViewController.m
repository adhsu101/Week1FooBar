//
//  ViewController.m
//  Week1FooBar
//
//  Created by Mobile Making on 10/23/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property (strong, nonatomic) IBOutlet UITextField *valueOneTextField;
@property (strong, nonatomic) IBOutlet UITextField *valueTwoTextField;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *webButton;
@property NSInteger result;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onCalculateButtonPressed:(id)sender {
    
    // multiply values
    NSInteger valueOne = [self.valueOneTextField.text integerValue];
    NSInteger valueTwo = [self.valueTwoTextField.text integerValue];
    self.result = valueOne * valueTwo;
    self.title = [NSString stringWithFormat: @"%ld", (long)self.result];
    
    // dismiss keyboard
    [self.valueOneTextField resignFirstResponder];
    [self.valueTwoTextField resignFirstResponder];
    
    // enable web button
    if (self.result % 5 == 0)
    {
        self.webButton.enabled = YES;
    }
    else
    {
        self.webButton.enabled = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // set title of web view
    UIViewController *webVC = [segue destinationViewController];
    webVC.title = [NSString stringWithFormat:@"%ld", (long)self.result];
}

@end
