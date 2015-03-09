//
//  ViewController.m
//  PizzaPasta
//
//  Created by RumCoon on 09.03.15.
//  Copyright (c) 2015 RumCoon. All rights reserved.

#import "ViewController.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>

@interface ViewController ()

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)quitButtonPressed:(id)sender {
    
    exit(0);
}

- (IBAction)sendButtonPressed:(id)sender;
{
    NSLog(@"Send Button was pressed: %@", self.tweetTextView.text);
    NSString *tweetText =[NSString stringWithFormat:@"%@ #PizzaPasta",self.tweetTextView.text];
    
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        NSLog(@"Ready to send: %@", tweetText);
    }
    
    SLComposeViewController *composer =[SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:tweetText];
    [self presentViewController:composer animated:YES completion:nil];
    
}



@end
