//
//  LPDRSASigner.h
//  LPDAlipay_Example
//
//  Created by steve on 05/09/2018.
//  Copyright © 2018 cnkcq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPDRSASigner : NSObject

- (id)initWithPrivateKey:(NSString *)privateKey;

- (NSString *)signString:(NSString *)string withRSA2:(BOOL)rsa2;

@end
