//
//  ViewController.m
//  HapticFeedbackDemo
//
//  Created by 张忠瑞 on 2018/1/4.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "ViewController.h"
#import "ZZRHapticFeedbackManager.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define COLOR(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a/1.0]

@interface ViewController ()

@property (nonatomic ,strong) UILabel               *UINotificationFeedbackGeneratorLabel;
@property (nonatomic ,strong) UILabel               *UIImpactFeedbackGeneratorLabel;
@property (nonatomic ,strong) UILabel               *UISelectionFeedbackGeneratorLabel;

@property (nonatomic ,strong) UIButton              *successBtn;
@property (nonatomic ,strong) UIButton              *warningBtn;
@property (nonatomic ,strong) UIButton              *errorBtn;

@property (nonatomic ,strong) UIButton              *lightBtn;
@property (nonatomic ,strong) UIButton              *mediumBtn;
@property (nonatomic ,strong) UIButton              *heavyBtn;

@property (nonatomic ,strong) UIButton              *selectionBtn;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    self.UINotificationFeedbackGeneratorLabel = [[UILabel alloc] init];
    self.UINotificationFeedbackGeneratorLabel.frame = CGRectMake(0, 20, WIDTH, 30);
    self.UINotificationFeedbackGeneratorLabel.text = @"UINotificationFeedbackGenerator";
    self.UINotificationFeedbackGeneratorLabel.textAlignment = NSTextAlignmentCenter;
    self.UINotificationFeedbackGeneratorLabel.textColor = COLOR(50, 50, 50, 1);
    self.UINotificationFeedbackGeneratorLabel.font = [UIFont systemFontOfSize:17];
    
    self.successBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.successBtn.backgroundColor = COLOR(118, 218, 84, 1);
    self.successBtn.frame = CGRectMake(WIDTH/2-150, 80, 80, 80);
    self.successBtn.layer.borderWidth = 1;
    self.successBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.successBtn.layer.cornerRadius = 40;
    [self.successBtn setTitle:@"success" forState:UIControlStateNormal];
    [self.successBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.successBtn addTarget:self action:@selector(successBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.warningBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.warningBtn.backgroundColor = COLOR(251, 157, 33, 1);
    self.warningBtn.frame = CGRectMake(WIDTH/2-40, 80, 80, 80);
    self.warningBtn.layer.borderWidth = 1;
    self.warningBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.warningBtn.layer.cornerRadius = 40;
    [self.warningBtn setTitle:@"warning" forState:UIControlStateNormal];
    [self.warningBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.warningBtn addTarget:self action:@selector(warningBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    self.errorBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.errorBtn.backgroundColor = COLOR(255, 87, 79, 1);
    self.errorBtn.frame = CGRectMake(WIDTH/2+70, 80, 80, 80);
    self.errorBtn.layer.borderWidth = 1;
    self.errorBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.errorBtn.layer.cornerRadius = 40;
    [self.errorBtn setTitle:@"error" forState:UIControlStateNormal];
    [self.errorBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.errorBtn addTarget:self action:@selector(errorBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    
    self.UIImpactFeedbackGeneratorLabel = [[UILabel alloc] init];
    self.UIImpactFeedbackGeneratorLabel.frame = CGRectMake(0, HEIGHT/3 + 20, WIDTH, 30);
    self.UIImpactFeedbackGeneratorLabel.text = @"UIImpactFeedbackGeneratorLabel";
    self.UIImpactFeedbackGeneratorLabel.textAlignment = NSTextAlignmentCenter;
    self.UIImpactFeedbackGeneratorLabel.textColor = COLOR(50, 50, 50, 1);
    self.UIImpactFeedbackGeneratorLabel.font = [UIFont systemFontOfSize:17];
    
    self.lightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.lightBtn.backgroundColor = COLOR(200, 200, 200, 1);
    self.lightBtn.frame = CGRectMake(WIDTH/2-150, HEIGHT/3 + 80, 80, 80);
    self.lightBtn.layer.borderWidth = 1;
    self.lightBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.lightBtn.layer.cornerRadius = 40;
    [self.lightBtn setTitle:@"light" forState:UIControlStateNormal];
    [self.lightBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.lightBtn addTarget:self action:@selector(lightBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    
    self.mediumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.mediumBtn.backgroundColor = COLOR(150, 150, 150, 1);
    self.mediumBtn.frame = CGRectMake(WIDTH/2-40, HEIGHT/3 + 80, 80, 80);
    self.mediumBtn.layer.borderWidth = 1;
    self.mediumBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.mediumBtn.layer.cornerRadius = 40;
    [self.mediumBtn setTitle:@"medium" forState:UIControlStateNormal];
    [self.mediumBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.mediumBtn addTarget:self action:@selector(mediumBtnClicked) forControlEvents:UIControlEventTouchUpInside];


    self.heavyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.heavyBtn.backgroundColor = COLOR(100, 100, 100, 1);
    self.heavyBtn.frame = CGRectMake(WIDTH/2 + 70, HEIGHT/3 + 80, 80, 80);
    self.heavyBtn.layer.borderWidth = 1;
    self.heavyBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.heavyBtn.layer.cornerRadius = 40;
    [self.heavyBtn setTitle:@"heavy" forState:UIControlStateNormal];
    [self.heavyBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.heavyBtn addTarget:self action:@selector(heavyBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    
    self.UISelectionFeedbackGeneratorLabel = [[UILabel alloc] init];
    self.UISelectionFeedbackGeneratorLabel.frame = CGRectMake(0, HEIGHT*2/3 + 20, WIDTH, 30);
    self.UISelectionFeedbackGeneratorLabel.text = @"UISelectionFeedbackGenerator";
    self.UISelectionFeedbackGeneratorLabel.textAlignment = NSTextAlignmentCenter;
    self.UISelectionFeedbackGeneratorLabel.textColor = COLOR(50, 50, 50, 1);
    self.UISelectionFeedbackGeneratorLabel.font = [UIFont systemFontOfSize:17];

    self.selectionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.selectionBtn.backgroundColor = COLOR(150, 150, 150, 1);
    self.selectionBtn.frame = CGRectMake(WIDTH/2-40, HEIGHT*2/3 + 80, 80, 80);
    self.selectionBtn.layer.borderWidth = 1;
    self.selectionBtn.layer.borderColor = [UIColor clearColor].CGColor;
    self.selectionBtn.layer.cornerRadius = 40;
    [self.selectionBtn setTitle:@"selection" forState:UIControlStateNormal];
    [self.selectionBtn setTitleColor:COLOR(50, 50, 50, 1) forState:UIControlStateNormal];
    [self.selectionBtn addTarget:self action:@selector(selectionBtnClicked) forControlEvents:UIControlEventTouchUpInside];

    
    
    [self.view addSubview:self.UINotificationFeedbackGeneratorLabel];
    [self.view addSubview:self.successBtn];
    [self.view addSubview:self.warningBtn];
    [self.view addSubview:self.errorBtn];
    [self.view addSubview:self.UIImpactFeedbackGeneratorLabel];
    [self.view addSubview:self.lightBtn];
    [self.view addSubview:self.mediumBtn];
    [self.view addSubview:self.heavyBtn];
    [self.view addSubview:self.UISelectionFeedbackGeneratorLabel];
    [self.view addSubview:self.selectionBtn];
    
    
}

#pragma mark - events

- (void)successBtnClicked
{
    [ZZRHapticFeedbackManager executeSuccessFeedback];
}

- (void)warningBtnClicked
{
    [ZZRHapticFeedbackManager executeWarningFeedback];
}

- (void)errorBtnClicked
{
    [ZZRHapticFeedbackManager excuteErrorFeedback];
}

- (void)lightBtnClicked
{
    [ZZRHapticFeedbackManager excuteLightFeedback];
}

- (void)mediumBtnClicked
{
    [ZZRHapticFeedbackManager excuteMediumFeedback];
}

- (void)heavyBtnClicked
{
    [ZZRHapticFeedbackManager excuteHeavyFeedback];
}

- (void)selectionBtnClicked
{
    [ZZRHapticFeedbackManager excuteSelectionFeedback];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
























@end
