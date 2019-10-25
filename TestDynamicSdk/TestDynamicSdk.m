//
//  TestDynamicSdk.m
//  TestDynamicSdk
//
//  Created by wangdacheng on 2019/10/25.
//  Copyright © 2019 qihoo. All rights reserved.
//

#import "TestDynamicSdk.h"

#if __has_include(<TestStaticSdk/TestStaticSdk.h>)
    #import <TestStaticSdk/TestStaticSdk.h>
    #ifndef HAS_IMPORT_DY
        #define HAS_IMPORT_DY 1
    #endif
#else
    #ifndef HAS_IMPORT_DY
        #define HAS_IMPORT_DY 0
    #endif
#endif


@interface TestDynamicSdk ()

@property (nonatomic, strong) id staticSdkObject;

@end

@implementation TestDynamicSdk

//- (id)init {
//
//    self = [super init];
//    if (self) {
//        
//        Class class = NSClassFromString(@"TestStaticSdk");
//        if (!class) {
//            NSLog(@"TestStaticSdk没有编译");
//            return self;
//        }
//        SEL sel = NSSelectorFromString(@"new");
//        id (*imp)(id, SEL) = (id (*)(id, SEL))[class methodForSelector:sel];
//        self.staticSdkObject = imp(class, sel);
//    }
//    return self;
//}
//
//- (NSString *)getCombineStrWithA:(NSString *)aStr B:(NSString *)bStr {
//
//    if (!_staticSdkObject) {
//        NSLog(@"staticSdkObject为空");
//        return nil;
//    }
//    SEL sel = NSSelectorFromString(@"getCombineStrWithA:B:");
//    if (![_staticSdkObject respondsToSelector:sel]) {
//        NSLog(@"getCombineStrWithA:B:方法没有实现");
//        return nil;
//    }
//    NSString * (*imp)(id, SEL, NSString *, NSString *) = (NSString * (*)(id, SEL, NSString *, NSString *))[_staticSdkObject methodForSelector:sel];
//    NSString *combinedStr = imp(_staticSdkObject, sel, aStr, bStr);
//    return combinedStr;
//}


- (NSString *)getCombineStrWithA:(NSString *)aStr B:(NSString *)bStr {

#if HAS_IMPORT_DY == 1
    TestStaticSdk *staticSdk = [[TestStaticSdk alloc] init];
    NSString *combinedStr = [staticSdk getCombineStrWithA:@"common_A_String" B:@"common_B_String"];
    return combinedStr;
#else
    return nil;
#endif
}


@end

