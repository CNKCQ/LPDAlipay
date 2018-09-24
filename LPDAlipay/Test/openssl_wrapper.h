//
//  openssl_wrapper.h
//  LPDAlipay_Example
//
//  Created by steve on 05/09/2018.
//  Copyright © 2018 cnkcq. All rights reserved.
//

#import <Foundation/Foundation.h>

int rsa_sign_with_private_key_pem(char *message, int message_length
                                  , unsigned char *signature, unsigned int *signature_length
                                  , char *private_key_file_path, BOOL rsa2);
NSString *base64StringFromData(NSData *signature);
