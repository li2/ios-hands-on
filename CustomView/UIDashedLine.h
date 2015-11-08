//
//  UIDashedLine.h
//
//  Created by weiyi.li on 15-4-28.
//  Copyright (c) 2015年 Magellan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDashedLine : UIView

@property(strong, nonatomic) UIColor *strokeColor;
@property(assign, nonatomic) CGFloat segmentsLength;

-(instancetype)initWithFrame:(CGRect)frame withStrokeColor:(UIColor *)color;


@end
