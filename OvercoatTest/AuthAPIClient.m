//
//  AuthAPIClient.m
//  OvercoatTest
//
//  Created by Chandra Shirashyad on 5/26/15.
//  Copyright (c) 2015 Chandra Shirashyad. All rights reserved.
//

#import "AuthAPIClient.h"
#import "Authentication.h"

@implementation AuthAPIClient

+ (NSDictionary *)modelClassesByResourcePath {
    return @{
             @"authn/*": [Authentication class]
             };
}

@end
