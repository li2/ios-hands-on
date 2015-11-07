//
//  MyCustomCollectionViewCell.m
//  CollectionViewExample
//
//  Created by Erick Bennett on 12/9/14.
//  Copyright (c) 2014 Erick Bennett. All rights reserved.
//

#import "MyCustomCollectionViewCell.h"

@implementation MyCustomCollectionViewCell


-(void)updateViewMy {
        for (int i = 0; i <8; i ++) {
            
            _eight_btn = [UIButton buttonWithType:UIButtonTypeCustom];
            _eight_btn.tag = i;
//                        _eight_btn.frame = CGRectZero;
            _eight_btn.frame = CGRectMake(20, i*10, 10, 8);
            [self addSubview:_eight_btn];
            _eight_btn.userInteractionEnabled =YES;
            _eight_btn.backgroundColor = [UIColor whiteColor];
            [self.eight_btn addTarget:self action:@selector(eight_btn_click:) forControlEvents:UIControlEventTouchUpInside];
        }
}

-(void)eight_btn_click:(UIButton *)btn{
    if ([self.delegate respondsToSelector:@selector(choseTerm:)]) {
        [self.delegate choseTerm:btn];
        NSLog(@"代理事件");
    }
}
@end
