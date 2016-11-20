//
//  VViewController.m
//  ParallaxUtils
//
//  Created by Andre Rodrigues on 11/20/2016.
//  Copyright (c) 2016 Andre Rodrigues. All rights reserved.
//

#import "VViewController.h"
#import "UIView+Parallax.h"


@implementation VViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UIImageView *imageView = [self.view viewWithTag:100];
    UILabel *label = [self.view viewWithTag:110];
    
    [label addParallaxWithStrength:30];
    [self.view addParallaxToUIImageView:imageView withStrength:40];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
