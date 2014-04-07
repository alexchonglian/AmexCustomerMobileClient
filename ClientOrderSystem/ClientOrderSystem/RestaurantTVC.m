//
//  RestaurantTVC.m
//  ClientOrderSystem
//
//  Created by Chong Lian on 4/7/14.
//  Copyright (c) 2014 Chong Lian. All rights reserved.
//

#import "RestaurantTVC.h"

@interface RestaurantTVC ()

@end

@implementation RestaurantTVC

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.restaurants count];
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Restaurant";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.restaurants[indexPath.row];
    
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.restaurants = @[@"restaurant1", @"restaurant2"];
}

@end
