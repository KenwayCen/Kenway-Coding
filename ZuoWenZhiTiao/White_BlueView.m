//
//  White_BlueView.m
//  ZuoWenZhiTiao
//
//  Created by Kenway on 2018/10/28.
//  Copyright © 2018 Kenway. All rights reserved.
//

#import "White_BlueView.h"

@implementation White_BlueView

- (void)awakeFromNib{
    [super awakeFromNib];
    [self addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)]];
}

- (void)tap:(UIGestureRecognizer *)gesture{
    NSLog(@"Tap %@",NSStringFromClass(self.class));
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end
