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

@end

@implementation UIImageView (Parallax)

- (void)addFixedParallaxToUIImageViewWithStrength:(NSInteger)strength {
    
    CGRect newFrame = self.frame;
    newFrame.origin.x = -strength;
    newFrame.origin.y = -strength;
    newFrame.size.width = newFrame.size.width + (strength * 2);
    newFrame.size.height = newFrame.size.height + (strength * 2);
        
    UIImageView *newImageView = [[UIImageView alloc] initWithFrame:newFrame];
    newImageView.image = self.image;
    self.image = nil;
    [self setClipsToBounds:YES];
        
    [self addSubview:newImageView];
    [newImageView addParallaxWithStrength:strength];
    
}

@end
