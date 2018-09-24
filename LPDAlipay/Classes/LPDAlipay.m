//
//  LPDAlipay.m
//  LPDAlipay
//
//  Created by steve on 24/09/2018.
//

#import "LPDAlipay.h"
#import <AlipaySDK/AlipaySDK.h>

@implementation LPDAlipay

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    static LPDAlipay *instance;
    dispatch_once(&onceToken, ^{
        instance = [[LPDAlipay alloc] init];
    });
    return instance;
}

- (void)lpd_payOrder:(NSString *)order
          fromScheme:(NSString *)scheme
            callback:(LPDCallBackBlock)callback
{
    [[AlipaySDK defaultService] payOrder:order fromScheme:scheme callback: callback];

}

- (void)lpd_auth_V2WithInfo:(NSString *)info
                 fromScheme:(NSString *)scheme
                   callback:(LPDCallBackBlock)callback {
    [[AlipaySDK defaultService] auth_V2WithInfo:info fromScheme:scheme callback:callback];
    
}

- (void)lpd_processOrderWithPaymentResult:(NSURL *)result
                          standbyCallback:(LPDCallBackBlock)callback {
    [[AlipaySDK defaultService] processOrderWithPaymentResult:result standbyCallback:callback];
    
}

- (void)lpd_processAuth_V2Result:(NSURL *)result
                 standbyCallback:(LPDCallBackBlock)callback {
    [[AlipaySDK defaultService] processAuth_V2Result:result standbyCallback:callback];
}

@end
