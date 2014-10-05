//
//  WebViewController.h
//  NavCtrl
//
//  Created by JESSE SCHNEIDER on 9/23/14.
//  Copyright (c) 2014 Aditya Narayan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (retain, nonatomic) IBOutlet UIWebView *browserView;

@property (nonatomic, strong) NSString *URL;

@end
