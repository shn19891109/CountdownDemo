//
//  UIButton+countDownBtn.m
//  CountdownDemo
//
//  Created by 苏浩楠 on 16/1/6.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import "UIButton+countDownBtn.h"

@implementation UIButton (countDownBtn)


- (void)startWithTime:(NSInteger)timeLine normalTitle:(NSString *)normalTitle subTitle:(NSString *)subTitle normalColor:(UIColor *)normalColor countColor:(UIColor *)countColor {

    //倒计时时间
    __block NSInteger timeOut = timeLine;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    
    //每秒执行一次
    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 0.0);
    dispatch_source_set_event_handler(timer, ^{
        //倒计时结束，关闭
        if (timeOut <= 0) {
            dispatch_source_cancel(timer);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.backgroundColor = normalColor;
                [self setTitle:normalTitle forState:UIControlStateNormal];
                self.userInteractionEnabled = YES;
            });
        } else {
            int seconds = timeOut % 60;
            NSString *timeStr = [NSString stringWithFormat:@"%0.2d",seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.backgroundColor = countColor;
                [self setTitle:[NSString stringWithFormat:@"%@%@",timeStr,subTitle] forState:UIControlStateNormal];
                self.userInteractionEnabled = NO;
                
            });
            timeOut --;
        }
    });
    dispatch_resume(timer);
    
}
@end
