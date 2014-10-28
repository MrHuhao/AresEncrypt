//
//  AresEncrypt.m
//  ceshi
//
//  Created by huhao on 14-10-28.
//  Copyright (c) 2014年 胡皓. All rights reserved.
//

#import "AresEncrypt.h"
#import "MIHDESKey.h"
#import "NSData+Base64.h"

@implementation AresEncrypt
#define useDES YES
#pragma market-
#pragma mark 加密 DES 公钥 @"SHMB-P&C" 私钥 @"SHANGHAIBANK_P&C"

+(NSData *)encryptDES:(NSString *)msg{
    id<MIHSymmetricKey> symmetricKey = [[MIHDESKey alloc]initWithKey:[@"SHMB-P&C" dataUsingEncoding:NSUTF8StringEncoding] iv:[@"SHANGHAIBANK_P&C" dataUsingEncoding:NSUTF8StringEncoding] mode:MIHDESModeCBC];
    NSError *encryptionError = nil;
    NSData *messageData = [msg dataUsingEncoding:NSUTF8StringEncoding];
    if (!useDES) return [NSData dataFromBase64String:msg];
    NSData *encryptedData = [symmetricKey encrypt:messageData error:&encryptionError];
    return [[encryptedData base64EncodedString] dataUsingEncoding:NSUTF8StringEncoding];
}

+(NSString *)dencryptDES: (NSData *)msg{
    id<MIHSymmetricKey> symmetricKey = [[MIHDESKey alloc]initWithKey:[@"SHMB-P&C" dataUsingEncoding:NSUTF8StringEncoding] iv:[@"SHANGHAIBANK_P&C" dataUsingEncoding:NSUTF8StringEncoding] mode:MIHDESModeCBC];
    NSError *encryptionError = nil;
    if (!useDES) return [msg base64EncodedString];
    NSData *encryptedData = [symmetricKey decrypt:msg error:&encryptionError];
    return [[NSString alloc]initWithData:encryptedData encoding:NSUTF8StringEncoding];
}

-(NSData *)encryptDES:(NSString *)msg{
    id<MIHSymmetricKey> symmetricKey = [[MIHDESKey alloc]initWithKey:[@"SHMB-P&C" dataUsingEncoding:NSUTF8StringEncoding] iv:[@"SHANGHAIBANK_P&C" dataUsingEncoding:NSUTF8StringEncoding] mode:MIHDESModeCBC];
    NSError *encryptionError = nil;
    NSData *messageData = [msg dataUsingEncoding:NSUTF8StringEncoding];
    if (!useDES) return [NSData dataFromBase64String:msg];
    NSData *encryptedData = [symmetricKey encrypt:messageData error:&encryptionError];
    return [[encryptedData base64EncodedString] dataUsingEncoding:NSUTF8StringEncoding];
}

-(NSString *)dencryptDES: (NSData *)msg{
    id<MIHSymmetricKey> symmetricKey = [[MIHDESKey alloc]initWithKey:[@"SHMB-P&C" dataUsingEncoding:NSUTF8StringEncoding] iv:[@"SHANGHAIBANK_P&C" dataUsingEncoding:NSUTF8StringEncoding] mode:MIHDESModeCBC];
    NSError *encryptionError = nil;
    if (!useDES) return [msg base64EncodedString];
    NSData *encryptedData = [symmetricKey decrypt:msg error:&encryptionError];
    return [[NSString alloc]initWithData:encryptedData encoding:NSUTF8StringEncoding];
}


@end
