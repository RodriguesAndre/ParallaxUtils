//
//  UIView+Parallax.m
//  Pods
//
//  Created by Verglas@2x on 20/11/16.
//
//

#import "UIView+Parallax.h"

@implementation UIView (Parallax)


- (void)addParallaxWithStrength:(NSInteger)strength {
    
    UIInterpolatingMotionEffect *verticalMotionEffect = [[UIInterpolatingMotionEffect alloc]
                                                         initWithKeyPath:@"center.y"
                                                         type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    verticalMotionEffect.minimumRelativeValue = @(-strength);
    verticalMotionEffect.maximumRelativeValue = @(strength);
    
    UIInterpolatingMotionEffect *horizontalMotionEffect = [[UIInterpolatingMotionEffect alloc]
                                                           initWithKeyPath:@"center.x"
                                                           type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    horizontalMotionEffect.minimumRelativeValue = @(-strength);
    horizontalMotionEffect.maximumRelativeValue = @(strength);
    
    UIMotionEffectGroup *group = [UIMotionEffectGroup new];
    group.motionEffects = @[horizontalMotionEffect, verticalMotionEffect];
    
    [self addMotionEffect:group];
}


- (void)addParallaxToUIImageView:(UIImageView *)imageView withStrength:(NSInteger)strength {
    
    UIView *imageContainer = [[UIView alloc] initWithFrame:imageView.frame];
    [imageContainer setClipsToBounds:YES];
    
    CGRect newFrame = imageView.bounds;
    newFrame.origin.x = -strength;
    newFrame.origin.y = -strength;
    newFrame.size.width = newFrame.size.width + (strength * 2);
    newFrame.size.height = newFrame.size.height + (strength * 2);
        
    
    [self insertSubview:imageContainer atIndex:imageView.layer.zPosition];
    [imageView removeFromSuperview];
    
    [imageContainer addSubview:imageView];
    [imageView setFrame:newFrame];
    
    [imageView addParallaxWithStrength:strength];
}

@end
