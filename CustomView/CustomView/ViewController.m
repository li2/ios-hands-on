//
//  ViewController.m
//  CustomView
//
//  Created by weiyi.li on 15/11/8.
//  Copyright © 2015年 weiyi.li. All rights reserved.
//

#import "ViewController.h"
#import "UIDashedLine.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIDashedLine *customView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 方法1
    // 完全由代码添加自定义的View
    CGRect lineBounds = CGRectMake(0, 22, self.view.bounds.size.width, 22);
    UIDashedLine *line = [[UIDashedLine alloc] initWithFrame:lineBounds withStrokeColor:[UIColor greenColor]];
    [self.view addSubview:line];
    
    // 方法2
    // 在Storyboard中添加一个UIView，在Identity Inspector 把Custom Class设置为你自定义View的类名
    self.customView.strokeColor = [UIColor yellowColor];
    self.customView.segmentsLength = 2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
