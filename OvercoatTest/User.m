//
//  User.m
//  Pods
//
//  Created by Chandra Shirashyad on 12/18/14.
//
//

#import "User.h"

@implementation User

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"userId": @"id",
             @"profile": @"profile",
             @"recoveryQuestion": @"recoveryQuestion"
             };
}

+ (NSValueTransformer *)profileJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:UserProfile.class];
}

+ (NSValueTransformer *)recoveryQuestionJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:RecoveryQuestion.class];
}

@end
