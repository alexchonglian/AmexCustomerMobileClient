//
//  MenuTVC.m
//  ClientOrderSystem
//
//  Created by Chong Lian on 3/26/14.
//  Copyright (c) 2014 Chong Lian. All rights reserved.
//

#import "MenuTVC.h"

@interface MenuTVC ()

@end

@implementation MenuTVC

- (void) setEntries: (NSArray *) entries {
    _entries = entries;
    [self.tableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.entries count];
}

- (NSString *) titleForRow: (NSUInteger) row {
    return [self.entries[row][@"name"] description];
}

- (NSString *) subtitleForRow: (NSUInteger) row {
    // NSLog(@"%@", self.entries[row][@"price"]);
    return [self.entries[row][@"price"] description];
}

- (UIImage *) imageForRow: (NSUInteger) row {
    return [UIImage imageNamed: [self.entries[row][@"image"] description]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Entry";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    // Configure the cell...
    cell.textLabel.text = [self titleForRow:indexPath.row];
    cell.detailTextLabel.text = [self subtitleForRow: indexPath.row];
    cell.imageView.image = [self imageForRow: indexPath.row];
    /*
    UIStepper* stepper = [[UIStepper alloc] init];
    stepper.frame = CGRectMake(210, 40, 40, 5);
    */
    
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    addButton.frame = CGRectMake(270, 30, 40, 25);
    [addButton setTitle:@"+ 1" forState:UIControlStateNormal];
    [addButton addTarget:self action:@selector(printOut:) forControlEvents:UIControlEventTouchUpInside];
    addButton.tag = indexPath.row;
    [cell addSubview:addButton];
    //[cell.contentView addSubview: stepper];
    
    return cell;
}


- (void)printOut: (UIButton *)sender {
    UIButton *button = (UIButton *)sender;
    NSLog(@"%@ %@", [self titleForRow:button.tag],[self subtitleForRow:button.tag]);
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass:[UITableViewCell class]]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        if (indexPath) {
            if ([segue.identifier isEqualToString:@"Show Entry Detail"]) {
                if ([segue.destinationViewController respondsToSelector:@selector(setImageURI:)]) {
                    NSString *uri = [self.entries[indexPath.row][@"image"] description];
                    [segue.destinationViewController performSelector:@selector(setImageURI:) withObject:uri];
                    [segue.destinationViewController setTitle:[self titleForRow:indexPath.row]];
                }
            }
        }
    }
}


- (void)viewDidLoad

{
    
    [super viewDidLoad];
    
    // Initialize table data
    
    self.entries = @[
                     
                     @{
                         
                         @"name": @"Mushroom Risotto",
                         
                         @"image": @"mushroom_risotto.jpg",
                         
                         @"price": @"$7.85",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Full Breakfast",
                         
                         @"image": @"full_breakfast.jpg",
                         
                         @"price": @"$9.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Hamburger",
                         
                         @"image": @"hamburger.jpg",
                         
                         @"price": @"$12.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Egg Benedict",
                         
                         @"image": @"egg_benedict.jpg",
                         
                         @"price": @"$4.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Ham and Egg Sandwich",
                         
                         @"image": @"ham_and_egg_sandwich.jpg",
                         
                         @"price": @"$6.15",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Creme Brelee",
                         
                         @"image": @"creme_brelee.jpg",
                         
                         @"price": @"$6.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"White Chocolate Donut",
                         
                         @"image": @"white_chocolate_donut.jpg",
                         
                         @"price": @"$3.20",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Vegetable Curry",
                         
                         @"image": @"vegetable_curry.jpg",
                         
                         @"price": @"$7.75",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Instant Noodle with Egg",
                         
                         @"image": @"instant_noodle_with_egg.jpg",
                         
                         @"price": @"$9.60",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Noodle with BBQ Pork",
                         
                         @"image": @"noodle_with_bbq_pork.jpg",
                         
                         @"price": @"$12.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Green Tea",
                         
                         @"image": @"green_tea.jpg",
                         
                         @"price": @"$2.80",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Thai Shrimp Cake",
                         
                         @"image": @"thai_shrimp_cake.jpg",
                         
                         @"price": @"$13.25",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Angry Birds Cake",
                         
                         @"image": @"angry_birds_cake.jpg",
                         
                         @"price": @"$16.00",
                         
                         @"rating": @"4.7"
                         
                         },
                     
                     @{
                         
                         @"name": @"Ham and Cheese Panini",
                         
                         @"image": @"ham_and_cheese_panini.jpg",
                         
                         @"price": @"$12.25",
                         
                         @"rating": @"4.7"
                         
                         }
                     
                     ];
    
}


@end
