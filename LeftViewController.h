//
//  LeftViewController.h
//  FB
//
//  Created by qainfotech on 17/01/14.
//  Copyright (c) 2014 qainfotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController<SKSlideViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *leftTableView;


@end
