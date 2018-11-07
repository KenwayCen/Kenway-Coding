//
//  UIView+HitTestPoint.m
//  ZuoWenZhiTiao
//
//  Created by Kenway on 2018/10/26.
//  Copyright © 2018 Kenway. All rights reserved.
//

#import "UIView+HitTestPoint.h"
#import <objc/runtime.h>

@implementation UIView (HitTestPoint)

+ (void)load{
    Method orignalHitTest = class_getInstanceMethod([UIView class], @selector(hitTest:withEvent:));
    Method orignalPointInside = class_getInstanceMethod([UIView class], @selector(pointInside:withEvent:));
    Method changeHitTest = class_getInstanceMethod([UIView class], @selector(ckh_hitTest:withEvent:));
    Method changePointInside = class_getInstanceMethod([UIView class], @selector(ckh_pointInside:withEvent:));
    method_exchangeImplementations(orignalHitTest, changeHitTest);
    method_exchangeImplementations(orignalPointInside, changePointInside);
}


- (UIView *)ckh_hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *target = [self ckh_hitTest:point withEvent:event];
//    NSLog(@"%@  hitTest,  return:%@",NSStringFromClass(self.class),NSStringFromClass(target.class));
    return target;
}
- (BOOL)ckh_pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL result = [self ckh_pointInside:point withEvent:event];
//    NSLog(@"%@  pointInside,  return: %@",NSStringFromClass(self.class),result?@"YES":@"NO");
    return result;
}

@end
