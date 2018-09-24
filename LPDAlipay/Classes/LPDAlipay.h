//
//  LPDAlipay.h
//  LPDAlipay
//
//  Created by steve on 24/09/2018.
//

#import <Foundation/Foundation.h>

typedef void(^LPDCallBackBlock)(NSDictionary *resultDic);

@interface LPDAlipay : NSObject

+ (instancetype)shared;

/**
 *  支付接口
 *
 *  @param order       订单信息
 *  @param scheme      调用支付的app注册在info.plist中的scheme
 *  @param callback    支付结果回调Block，用于wap支付结果回调（非跳转钱包支付）
 */
- (void)lpd_payOrder:(NSString *)order
      fromScheme:(NSString *)scheme
        callback:(LPDCallBackBlock)callback;

/**
 *  快登授权2.0
 *
 *  @param info          授权请求信息字符串
 *  @param scheme        调用授权的app注册在info.plist中的scheme
 *  @param callback      授权结果回调，若在授权过程中，调用方应用被系统终止，则此block无效，
 需要调用方在appDelegate中调用processAuth_V2Result:standbyCallback:方法获取授权结果
 */
- (void)lpd_auth_V2WithInfo:(NSString *)info
             fromScheme:(NSString *)scheme
               callback:(LPDCallBackBlock)callback;


/**
 *  处理钱包或者独立快捷app支付跳回商户app携带的支付结果Url
 *
 *  @param result         支付结果url
 *  @param callback       支付结果回调
 */
- (void)lpd_processOrderWithPaymentResult:(NSURL *)result
                      standbyCallback:(LPDCallBackBlock)callback;


/**
 *  处理授权信息Url
 *
 *  @param result        钱包返回的授权结果url
 *  @param callback      授权结果回调
 */
- (void)lpd_processAuth_V2Result:(NSURL *)result
             standbyCallback:(LPDCallBackBlock)callback;


@end
