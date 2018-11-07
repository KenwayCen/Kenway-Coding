//
//  ViewController.m
//  ZuoWenZhiTiao
//
//  Created by Kenway on 2018/10/25.
//  Copyright © 2018 Kenway. All rights reserved.
//

#import "ViewController.h"
#import "RootView.h"
#import "White_BlueView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet White_BlueView *white_blueView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSLog(@"White_BlueView 的响应链：");
    UIResponder *nextResponder = self.white_blueView.nextResponder;
    NSMutableString *sep = [NSMutableString stringWithFormat:@"  "];
    while (nextResponder) {
//        NSLog(@"%@%@",sep,NSStringFromClass(nextResponder.class));
        [sep appendString:@"  "];
        nextResponder = nextResponder.nextResponder;
    }
}


@end
