//
//  MainViewController.m
//  FB
//
//  Created by qainfotech on 17/01/14.
//  Copyright (c) 2014 qainfotech. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (nonatomic,weak) SKSlideViewController *slideController;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    
    if (CHECK_IOS7) {
        SET_LAYOUT
    }

}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)didTapLeftButton:(UIBarButtonItem *)sender {
    if(self.slideController.isActive){
        [self.slideController revealLeftContainerViewAnimated:YES];
    }else{
        [self.slideController showMainContainerViewAnimated:YES];
    }

}
- (IBAction)didTapRightButton:(UIBarButtonItem *)sender {
    if(self.slideController.isActive){
        [self.slideController revealRightContainerViewAnimated:YES];
    }else{
        [self.slideController showMainContainerViewAnimated:YES];
    }
 
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


-(void)setbackgroundColor:(UIColor *)color
{

    [self.view setBackgroundColor:color];
}
@end
