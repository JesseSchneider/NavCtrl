//
//  ChildViewController.h
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"
#import "Company.h"

@interface ChildViewController : UITableViewController

@property (retain, nonatomic) IBOutlet UITableView *tableView;

@property ( retain, nonatomic) WebViewController * webVC;

@property (nonatomic, strong) Company *company;


@end
