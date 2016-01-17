//
//  UIButton+countDownBtn.h
//  CountdownDemo
//
//  Created by 苏浩楠 on 16/1/6.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (countDownBtn)
/**
 *  倒计时按钮
 *
 *  @param timeLine    倒计时总时间
 *  @param normalTitle 还没倒计时的title
 *  @param subTitle    倒计时中的子名字，如时、分
 *  @param normalColor 还没倒计时的颜色
 *  @param countColor  倒计时中的颜色
 */

- (void)startWithTime:(NSInteger)timeLine normalTitle:(NSString *)normalTitle subTitle:(NSString *)subTitle normalColor:(UIColor *)normalColor countColor:(UIColor *)countColor;

@end
