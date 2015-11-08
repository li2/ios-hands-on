//
//  UIDashedLine.m
//
//  Created by weiyi.li on 15-4-28.
//  Copyright (c) 2015年 Magellan. All rights reserved.
//

#import "UIDashedLine.h"

CGFloat const kUIDashedLineDefaultSegmentsLength = 5;

@interface UIDashedLine()

@end

@implementation UIDashedLine


-(instancetype)initWithFrame:(CGRect)frame withStrokeColor:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.strokeColor = color;
        self.segmentsLength = kUIDashedLineDefaultSegmentsLength;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, rect.size.height);
    CGContextSetStrokeColorWithColor(context, self.strokeColor.CGColor);
    CGFloat lengths[] = {self.segmentsLength, self.segmentsLength};
    CGContextSetLineDash(context, 0, lengths, sizeof(lengths)/sizeof(lengths[0]));
    CGContextMoveToPoint(context, rect.origin.x, rect.origin.y);
    CGContextAddLineToPoint(context, rect.size.width, rect.origin.y);
    CGContextStrokePath(context);
    CGContextClosePath(context);
}

@end
