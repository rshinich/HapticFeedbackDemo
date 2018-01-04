//
//  ZZRHapticFeedbackManager.h
//  HapticFeedbackDemo
//
//  Created by 张忠瑞 on 2018/1/4.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZZRHapticFeedbackManager : NSObject

#pragma mark -
#pragma mark - UINotificationFeedbackGenerator

+ (void)executeSuccessFeedback;
+ (void)executeWarningFeedback;
+ (void)excuteErrorFeedback;

#pragma mark -
#pragma mark - UIImpactFeedbackGenerator

+ (void)excuteLightFeedback;
+ (void)excuteMediumFeedback;
+ (void)excuteHeavyFeedback;

#pragma mark -
#pragma mark - UISelectionFeedbackGenerator

+ (void)excuteSelectionFeedback;

@end
