//
//  XXViewController.m
//  UIView+Category
//
//  Created by Tracy on 14-1-7.
//  Copyright (c) 2014年 Mark. All rights reserved.
//

#import "XXViewController.h"

@interface XXViewController ()

@end

@implementation XXViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setAction:kUIButtonBlockTouchInside withBlock:^{
        NSLog(@"~~~~~~~~~~");
    }];
    button.frame = (CGRect){100,100,100,100};
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
