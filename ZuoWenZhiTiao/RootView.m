//
//  RootView.m
//  ZuoWenZhiTiao
//
//  Created by Kenway on 2018/10/29.
//  Copyright © 2018 Kenway. All rights reserved.
//

#import "RootView.h"

@implementation RootView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@  touchesBegan",NSStringFromClass(self.class));
    [super touchesBegan:touches withEvent:event];
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@  touchesMoved",NSStringFromClass(self.class));
    [super touchesMoved:touches withEvent:event];
}
-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@  touchesEnded",NSStringFromClass(self.class));
    [super touchesEnded:touches withEvent:event];
}
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"%@  touchesCancelled",NSStringFromClass(self.class));
    [super touchesCancelled:touches withEvent:event];
}
@end
