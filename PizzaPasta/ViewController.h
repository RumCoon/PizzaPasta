//
//  ViewController.h
//  PizzaPasta
//
//  Created by RumCoonon 09.03.15.
//  Copyright (c) 2015 RumCoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)sendButtonPressed:(id)sender;
- (IBAction)quitButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;

@end

