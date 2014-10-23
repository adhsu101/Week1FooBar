//
//  WebViewController.m
//  Week1FooBar
//
//  Created by Mobile Making on 10/23/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // load mobilmakers website
    NSURL *url =[NSURL URLWithString:@"http://mobilemakers.co"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    // animate activity indicator
    [self.activityIndicator startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    // stop activity indicator animation
    [self.activityIndicator stopAnimating];
}



@end
