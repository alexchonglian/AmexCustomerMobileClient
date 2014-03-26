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
    
    
    return cell;
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
