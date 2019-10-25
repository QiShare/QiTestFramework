//
//  TestStaticSdk.m
//  TestStaticSdk
//
//  Created by wangdacheng on 2019/10/24.
//  Copyright © 2019 qihoo. All rights reserved.
//

#import "TestStaticSdk.h"


@implementation TestStaticSdk

- (NSString *)getCombineStrWithA:(NSString *)aStr B:(NSString *)bStr {
    
    
    NSString *combinedStr = [NSString stringWithFormat:@"A:%@ B:%@", aStr, bStr];
    return combinedStr;
}

@end
