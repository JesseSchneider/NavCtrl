//
//  qcdDemoViewController.m
//  NavCtrl
//
//  Created by Aditya Narayan on 10/22/13.
//  Copyright (c) 2013 Aditya Narayan. All rights reserved.
//

#import "qcdDemoViewController.h"
#import "ChildViewController.h"

@interface qcdDemoViewController ()

@property (nonatomic, retain) NSArray *images;

@end

@implementation qcdDemoViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
// APPLE
    
    Company *apple = [[Company alloc] init];
    apple.companyName = @"Apple";
    apple.companyImage = @"12.jpg";
    apple.companyProducts = [[NSMutableArray alloc] init];
    
    Product *iPad = [[Product alloc]init];
    iPad.productName = @"iPad";
    iPad.productImage = @"0.jpg";
    iPad.productURL = @"https://www.apple.com/ipad/";
    
    Product *iPodTouch = [[Product alloc]init];
    iPodTouch.productName = @"iPod Touch";
    iPodTouch.productImage = @"1.jpg";
    iPodTouch.productURL = @"http://www.apple.com/ipod/";
    
    Product *iPhone = [[Product alloc]init];
    iPhone.productName = @"iPone";
    iPhone.productImage = @"2.jpg";
    iPhone.productURL = @"http://www.apple.com/iphone/";
    
    [apple.companyProducts addObject: iPad];
    [apple.companyProducts addObject: iPodTouch];
    [apple.companyProducts addObject: iPhone];
    
// SAMSUNG
    
    Company *samsung = [[Company alloc] init];
    samsung.companyName = @"Samsung";
    samsung.companyImage = @"13.jpg";
    samsung.companyProducts = [[NSMutableArray alloc] init];
    
    Product *galaxyS4 = [[Product alloc] init];
    galaxyS4.productName = @"Galaxy S4";
    galaxyS4.productImage = @"3.jpg";
    galaxyS4.productURL = @"http://www.samsung.com/galaxys4/";
    
    Product *galaxyNote = [[Product alloc] init];
    galaxyNote.productName = @"Galaxy Note";
    galaxyNote.productImage = @"4.jpg";
    galaxyNote.productURL = @"http://www.samsung.com/galaxynote";
   
    Product *galaxyTab = [[Product alloc] init];
    galaxyTab.productName = @"Galaxy Tab";
    galaxyTab.productImage = @"5.jpg";
    galaxyTab.productURL = @"http://www.samsung.com/TabS";
    
    [samsung.companyProducts addObject: galaxyS4];
    [samsung.companyProducts addObject: galaxyNote];
    [samsung.companyProducts addObject: galaxyTab];
    
// AMAZON
    
    Company *amazon = [[Company alloc] init];
    amazon.companyName = @"Amazon";
    amazon.companyImage = @"14.jpg";
    amazon.companyProducts = [[NSMutableArray alloc] init];
    
    Product *kindle = [[Product alloc] init];
    kindle.productName = @"Kindle";
    kindle.productImage = @"6.jpg";
    kindle.productURL = @"https://kindle.amazon.com/";
    
    Product *firePhone = [[Product alloc] init];
    firePhone.productName = @"Fire Phone";
    firePhone.productImage = @"7.jpg";
    firePhone.productURL = @"https://www.amazon.com/Fire-Phone";
    
    Product *amazonTablet = [[Product alloc] init];
    amazonTablet.productName = @"Amazon Tablet";
    amazonTablet.productImage = @"8.jpg";
    amazonTablet.productURL = @"http://www.amazon.com/dp/B00HCNHDN0/ref=fs_fs";
    
    [amazon.companyProducts addObject: kindle];
    [amazon.companyProducts addObject: firePhone];
    [amazon.companyProducts addObject: amazonTablet];

// GOOGLE
    
    Company *google = [[Company alloc] init];
    google.companyName = @"Google";
    google.companyImage = @"15.jpg";
    google.companyProducts = [[NSMutableArray alloc] init];
    
    Product *googlePhone = [[Product alloc] init];
    googlePhone.productName = @"Nexus";
    googlePhone.productImage = @"9.jpg";
    googlePhone.productURL = @"http://www.google.com/nexus/";
    
    Product *chromeBook = [[Product alloc] init];
    chromeBook.productName = @"Chrome Book";
    chromeBook.productImage = @"10.jpg";
    chromeBook.productURL = @"http://www.google.com/chrome/devices/";
    
    Product *chromeCast = [[Product alloc] init];
    chromeCast.productName = @"Chrome Cast";
    chromeCast.productImage = @"11.jpg";
    chromeCast.productURL = @"http://www.google.com/chrome/devices/chromecast/";
    
    [google.companyProducts addObject: googlePhone];
    [google.companyProducts addObject: chromeBook];
    [google.companyProducts addObject: chromeCast];
    
    
    
    self.companyList = [[NSMutableArray alloc]
                        initWithObjects: apple, samsung, amazon, google, nil];
    
    self.title = @"Tech Companies";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.companyList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    Company *selectedCompany = [[Company alloc] init];
    selectedCompany = [self.companyList objectAtIndex:[indexPath row]];
    cell.textLabel.text = selectedCompany.companyName;
    cell.imageView.image = [UIImage imageNamed:selectedCompany.companyImage];
    
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.childVC.company = [self.companyList objectAtIndex: indexPath.row];
    
    [self.navigationController
     pushViewController:self.childVC
     animated:YES];
    
}
 


@end
