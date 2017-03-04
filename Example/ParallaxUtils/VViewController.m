//
//  VViewController.m
//  ParallaxUtils
//
//  Created by Andre Rodrigues on 11/20/2016.
//  Copyright (c) 2016 Andre Rodrigues. All rights reserved.
//

#import "VViewController.h"
#import "UIView+Parallax.h"

@interface VViewController ()

@property (nonatomic, weak) IBOutlet UILabel *parallaxLabel;
@property (nonatomic, weak) IBOutlet UIImageView *parallaxImageView;

@end


@implementation VViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_parallaxLabel addParallax];
    [_parallaxImageView addParallaxClippedToBoundsWithStrength:40];
}


@end
