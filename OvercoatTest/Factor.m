//
//  Factor.m
//  Pods
//
//  Created by Chandra Shirashyad on 12/19/14.
//
//

#import "Factor.h"

@implementation Factor

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{ @"factorId": @"id",
              @"factorType": @"factorType",
              @"provider": @"provider",

              @"questionFactorProfile": @"profile",
              @"smsFactorProfile": @"profile",
              @"totpFactorProfile": @"profile",
              @"totpFactorActivation": @"activation",
              @"phone": @"phone",

              @"enroll": @"_links.enroll",
              @"verify": @"_links.verify",
              @"selfX": @"_links.self",
              @"user": @"_links.user",
              @"activate": @"_links.activate",
              @"deactivate": @"_links.deactivate",
              @"questions": @"_links.questions"
              };
}

+ (NSValueTransformer *)questionFactorProfileJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:QuestionFactorProfile.class];
}

+ (NSValueTransformer *)smsFactorProfileJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:SMSFactorProfile.class];
}

+ (NSValueTransformer *)totpFactorProfileJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:TOTPFactorProfile.class];
}

+ (NSValueTransformer *)phoneJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Phone.class];
}

+ (NSValueTransformer *)selfXJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

+ (NSValueTransformer *)activateJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

+ (NSValueTransformer *)deactivateJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

+ (NSValueTransformer *)questionsJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

+ (NSValueTransformer *)verifyJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

+ (NSValueTransformer *)enrollJSONTransformer {
    return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:Link.class];
}

@end
