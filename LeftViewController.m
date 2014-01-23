//
//  LeftViewController.m
//  FB
//
//  Created by qainfotech on 17/01/14.
//  Copyright (c) 2014 qainfotech. All rights reserved.
//

#import "LeftViewController.h"
#import "MainViewController.h"

@interface LeftViewController ()
@property (nonatomic,weak) SKSlideViewController *slideController;
@property (nonatomic,strong) NSArray *dataSource;
@end

@implementation LeftViewController

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

    self.dataSource=@[[UIColor blueColor],[UIColor whiteColor],[UIColor yellowColor],[UIColor orangeColor],[UIColor redColor],[UIColor grayColor]];
    [self.leftTableView reloadData];

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
#pragma mark Table View Delegate/ DataSource
#pragma mark -

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.dataSource count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"leftTableCell"];
    cell.textLabel.text=@"";
    [cell.contentView setBackgroundColor:(UIColor *)[self.dataSource objectAtIndex:indexPath.row]];
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"Background Colors";
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIColor *color=[self.dataSource objectAtIndex:indexPath.row];
    MainViewController *mainController=(MainViewController *)[self.slideController getMainViewController];
    [mainController setbackgroundColor:color];
    [self.slideController showMainContainerViewAnimated:YES];
}


#pragma mark -
#pragma mark SlideControllerDelegate
#pragma mark -

-(void)setSKSlideViewControllerReference:(SKSlideViewController *)aSlideViewController{
    self.slideController=aSlideViewController;
}

@end
