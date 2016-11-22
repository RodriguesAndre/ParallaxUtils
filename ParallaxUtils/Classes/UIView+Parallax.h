//
//  UIView+Parallax.h
//  Pods
//
//  Created by Verglas@2x on 20/11/16.
//
//

#import <Foundation/Foundation.h>

@interface UIView (Parallax)

- (void)addParallaxWithStrength:(NSInteger)strength;

@end

@interface UIImageView (Parallax)

- (void)addFixedParallaxToUIImageViewWithStrength:(NSInteger)strength;

@end
