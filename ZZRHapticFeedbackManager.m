//
//  ZZRHapticFeedbackManager.m
//  HapticFeedbackDemo
//
//  Created by 张忠瑞 on 2018/1/4.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "ZZRHapticFeedbackManager.h"

@implementation ZZRHapticFeedbackManager

#pragma mark -
#pragma mark - UINotificationFeedbackGenerator

+ (void)executeSuccessFeedback
{
    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
    [generator notificationOccurred:UINotificationFeedbackTypeSuccess];
}

+ (void)executeWarningFeedback
{
    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
    [generator notificationOccurred:UINotificationFeedbackTypeWarning];
}

+ (void)excuteErrorFeedback
{
    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
    [generator notificationOccurred:UINotificationFeedbackTypeError];
}

#pragma mark -
#pragma mark - UIImpactFeedbackGenerator

+ (void)excuteLightFeedback
{
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleLight];
    [generator prepare];
    [generator impactOccurred];
}

+ (void)excuteMediumFeedback
{
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleMedium];
    [generator prepare];
    [generator impactOccurred];
}

+ (void)excuteHeavyFeedback
{
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle: UIImpactFeedbackStyleHeavy];
    [generator prepare];
    [generator impactOccurred];
}


#pragma mark -
#pragma mark - UISelectionFeedbackGenerator


+ (void)excuteSelectionFeedback
{
    UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];
    [generator selectionChanged];
}



@end
