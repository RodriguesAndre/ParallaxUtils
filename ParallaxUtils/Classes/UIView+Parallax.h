//
//  UIView+Parallax.h
//  Pods
//
//  Created by Verglas@2x on 20/11/16.
//
//

#import <Foundation/Foundation.h>

@interface UIView (Parallax)

extern NSInteger const DEFAULT_PARALLAX_STRENGHT; // declaration

- (void)addParallax;
- (void)addParallaxWithStrength:(NSInteger)strength;
- (void)addParallaxClippedToBounds;
- (void)addParallaxClippedToBoundsWithStrength:(NSInteger)strength;

@end
