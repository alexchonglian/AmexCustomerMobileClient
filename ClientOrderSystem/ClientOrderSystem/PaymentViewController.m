//
//  PaymentViewController.m
//  ClientOrderSystem
//
//  Created by Chong Lian on 4/7/14.
//  Copyright (c) 2014 Chong Lian. All rights reserved.
//

#import "PaymentViewController.h"

@interface PaymentViewController ()
@property (strong, nonatomic) NSArray *allOrders;
@property (weak, nonatomic) IBOutlet UITextView *orderText;
@end

@implementation PaymentViewController
#define ALL_ORDERS @"AllOrderes"

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
    NSString *displayText = @"Order: \n";
    NSMutableArray *allOrdersUD = [[[NSUserDefaults standardUserDefaults] arrayForKey:ALL_ORDERS] mutableCopy];
    for (NSString *entry in allOrdersUD) {
        displayText = [displayText stringByAppendingFormat:@"%@\n",entry];
    }
    self.orderText.text = displayText;
}


@end
