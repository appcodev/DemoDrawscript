//
//  MyDrawingView.m
//  DrawscriptDemo1
//
//  Created by Chalermchon Samana on 4/29/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import "MyDrawingView.h"

@implementation MyDrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    
    UIColor* strokeColor = [UIColor colorWithRed: 0.149 green: 0.498 blue: 1 alpha: 1];
    UIBezierPath* path = [UIBezierPath bezierPath];
    [path moveToPoint: CGPointMake(257,149)];
    [path addCurveToPoint: CGPointMake(148,258) controlPoint1: CGPointMake(257,209) controlPoint2: CGPointMake(208,258)];
    [path addCurveToPoint: CGPointMake(40,149) controlPoint1: CGPointMake(88,258) controlPoint2: CGPointMake(40,209)];
    [path addCurveToPoint: CGPointMake(148,41) controlPoint1: CGPointMake(40,89) controlPoint2: CGPointMake(88,41)];
    [path addCurveToPoint: CGPointMake(257,149) controlPoint1: CGPointMake(208,41) controlPoint2: CGPointMake(257,89)];
    NSArray* gradientColors = [NSArray arrayWithObjects:
                               (id)[UIColor colorWithRed: 0.149 green: 0.498 blue: 1 alpha: 1].CGColor,
                               (id)[UIColor colorWithRed: 0.572 green: 0.749 blue: 1 alpha: 0].CGColor,
                               (id)[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0].CGColor,
                               (id)[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.798].CGColor,
                               (id)[UIColor colorWithRed: 1 green: 1 blue: 1 alpha: 0.798979640007019].CGColor,
                               (id)[UIColor colorWithRed: 0.498 green: 1 blue: 1 alpha: 0.899].CGColor,
                               (id)[UIColor colorWithRed: 0 green: 1 blue: 1 alpha: 0.8999999761581421].CGColor,
                               nil];
    CGFloat gradientLocations[] = { 0, 0.057, 0.114, 0.457, 0.915, 0.496, 0.993};
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);
    CGContextSaveGState(context);
    [path addClip];
    CGContextDrawLinearGradient(context, gradient, CGPointMake(207, 58), CGPointMake(88, 239), kCGGradientDrawsBeforeStartLocation | kCGGradientDrawsAfterEndLocation);
    CGContextRestoreGState(context);
    [strokeColor setStroke];
    path.lineWidth = 6;
    [path stroke];
    
    UIColor* strokeColor1 = [UIColor colorWithRed: 0.301 green: 0.713 blue: 1 alpha: 1];
    UIBezierPath* path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint: CGPointMake(155,239)];
    [path1 addCurveToPoint: CGPointMake(64,180) controlPoint1: CGPointMake(116,241) controlPoint2: CGPointMake(79,219)];
    [path1 addCurveToPoint: CGPointMake(117,63) controlPoint1: CGPointMake(47,134) controlPoint2: CGPointMake(70,81)];
    [strokeColor1 setStroke];
    path1.lineWidth = 1;
    [path1 stroke];
    
    UIColor* strokeColor2 = [UIColor colorWithRed: 0.301 green: 0.713 blue: 1 alpha: 1];
    UIBezierPath* path2 = [UIBezierPath bezierPath];
    [path2 moveToPoint: CGPointMake(149,57)];
    [path2 addCurveToPoint: CGPointMake(234,116) controlPoint1: CGPointMake(186,57) controlPoint2: CGPointMake(220,80)];
    [path2 addCurveToPoint: CGPointMake(181,233) controlPoint1: CGPointMake(252,163) controlPoint2: CGPointMake(228,215)];
    [strokeColor2 setStroke];
    path2.lineWidth = 1;
    [path2 stroke];
    
    UIColor* strokeColor3 = [UIColor colorWithRed: 0.301 green: 0.713 blue: 1 alpha: 1];
    UIBezierPath* path3 = [UIBezierPath bezierPath];
    [path3 moveToPoint: CGPointMake(96,168)];
    [path3 addCurveToPoint: CGPointMake(168,199) controlPoint1: CGPointMake(96,168) controlPoint2: CGPointMake(124,211)];
    [path3 addCurveToPoint: CGPointMake(206,134) controlPoint1: CGPointMake(211,187) controlPoint2: CGPointMake(206,134)];
    [strokeColor3 setStroke];
    path3.lineWidth = 0.75;
    [path3 stroke];
    
    
    
    

}


@end
