//
//  ViewController.m
//  QiTestFramework
//
//  Created by wangdacheng on 2019/10/24.
//  Copyright © 2019 qihoo. All rights reserved.
//

#import "ViewController.h"
#import <TestDynamicSdk/TestDynamicSdk.h>

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"挂载framework";
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(15, 100, 300, 50)];
    _label.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _label.layer.borderWidth = 0.5;
    _label.lineBreakMode = NSLineBreakByCharWrapping;
    _label.numberOfLines = 0;
    [_label setText:@"I am a Label"];
    [self.view addSubview:_label];
    
    [self testCommon];
}

- (void)testCommon {
    
    TestDynamicSdk *dynamicSdk = [[TestDynamicSdk alloc] init];
    NSString *combinedStr = [dynamicSdk getCombineStrWithA:@"common_A_String" B:@"common_B_String"];
    [_label setText:combinedStr];
}


@end
