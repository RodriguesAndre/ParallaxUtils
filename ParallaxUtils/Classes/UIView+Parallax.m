//
//  UIView+Parallax.m
//  Pods
//
//  Created by Verglas@2x on 20/11/16.
//
//

#import "UIView+Parallax.h"

@implementation UIView (Parallax)

NSInteger const DEFAULT_PARALLAX_STRENGHT = 30;

- (void)addParallax {
    [self addParallaxWithStrength:DEFAULT_PARALLAX_STRENGHT];
}

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


- (void)addParallaxClippedToBounds {
    [self addParallaxClippedToBoundsWithStrength:DEFAULT_PARALLAX_STRENGHT];
}

- (void)addParallaxClippedToBoundsWithStrength:(NSInteger)strength {
    
    UIView *imageContainer = [[UIView alloc] initWithFrame:self.frame];
    [imageContainer setClipsToBounds:YES];
    
    CGRect newFrame = self.bounds;
    newFrame.origin.x = -strength;
    newFrame.origin.y = -strength;
    newFrame.size.width = newFrame.size.width + (strength * 2);
    newFrame.size.height = newFrame.size.height + (strength * 2);
    
    
    [self.superview insertSubview:imageContainer atIndex:self.layer.zPosition];
    [self removeFromSuperview];
    
    [imageContainer addSubview:self];
    [self setFrame:newFrame];
    
    [self addParallaxWithStrength:strength];
}

@end
