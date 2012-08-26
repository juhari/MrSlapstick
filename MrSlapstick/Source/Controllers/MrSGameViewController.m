//
//  MrSGameViewController.m
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import "MrSGameViewController.h"
#import "MrSGame.h"
#import "MrSAppDelegate.h"

@interface MrSGameViewController ()

@property (nonatomic, strong) MrSGame *game;
@property (nonatomic, weak) MrSAppDelegate *appDelegate;

@end

@implementation MrSGameViewController

@synthesize game = _game;
@synthesize appDelegate =_appDelegate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    _game = [[MrSGame alloc] initWithView:self.view];
    
    _appDelegate = (MrSAppDelegate *)[[UIApplication sharedApplication] delegate];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
