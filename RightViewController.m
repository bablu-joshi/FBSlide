//
//  RightViewController.m
//  FB
//
//  Created by qainfotech on 17/01/14.
//  Copyright (c) 2014 qainfotech. All rights reserved.
//

#import "RightViewController.h"

@interface RightViewController ()
@property (nonatomic,weak) SKSlideViewController *slideController;

@end

@implementation RightViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark SlideControllerDelegate
#pragma mark -

-(void)setSKSlideViewControllerReference:(SKSlideViewController *)aSlideViewController{
    self.slideController=aSlideViewController;
}
@end
