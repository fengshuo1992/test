//
//  FSDragView.m
//  学习的第一天
//
//  Created by 杭州米发 on 2017/12/12.
//  Copyright © 2017年 杭州米发. All rights reserved.
//

#import "FSDragView.h"

@implementation FSDragView



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
    
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self];
    CGPoint perPoint = [touch previousLocationInView:self];
    NSLog(@"current -----%@", NSStringFromCGPoint(perPoint));
    NSLog(@"pre -----%@", NSStringFromCGPoint(currentPoint));
    self.transform = CGAffineTransformTranslate(self.transform,currentPoint.x - perPoint.x, currentPoint.y - perPoint.y);
    
    
    
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%s", __func__);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
