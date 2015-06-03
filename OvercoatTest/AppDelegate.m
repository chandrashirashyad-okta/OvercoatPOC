//
//  AppDelegate.m
//  OvercoatTest
//
//  Created by Chandra Shirashyad on 5/20/15.
//  Copyright (c) 2015 Chandra Shirashyad. All rights reserved.
//

#import "AppDelegate.h"
#include "AuthAPIClient.h"
#import "Authentication.h"

static NSString * const kBaseURL = @"http://rain.okta1.com:1802/api/v1/";
static NSString * const kAuthToken = @"SSWS 00vw3Y13XbT_Dbo7nBneP2uQH6MdbyLCFhz2LmDrNL";

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    //Mantle Tests
    NSDictionary *JSONDictionary = @{
                                     @"stateToken" : @"00s1pd3bZuOv-meJE13hz1B7SZl5EGc14Ii_CTBIYd",
                                     @"expiresAt" : @"2014-11-02T23:39:03.319Z",
                                     @"status" : @"PASSWORD_EXPIRED",
                                     @"relayState" : @"/myapp/some/deep/link/i/want/to/return/to",
                                     @"_embedded" : @{
                                         @"user" : @{
                                             @"id" : @"00ub0oNGTSWTBKOLGLNR",
                                             @"profile" : @{
                                                 @"login" : @"isaac@example.org",
                                                 @"firstName" : @"Isaac",
                                                 @"lastName" : @"Brock",
                                                 @"locale" : @"en_US",
                                                 @"timeZone" : @"America/Los_Angeles"
                                                 }
                                             }
                                         },
                                     @"factors": @[
                                             @{
                                                 @"factorType": @"question",
                                                 @"provider": @"OKTA",
                                                 @"_links": @{
                                                         @"questions": @{
                                                                 @"href": @"https://your-domain.okta.com/api/v1/users/00uoy3CXZHSMMJPHYXXP/factors/questions",
                                                                 @"hints": @{
                                                                         @"allow": @[
                                                                                 @"GET"
                                                                                 ]
                                                                         }
                                                                 },
                                                         @"enroll": @{
                                                                 @"href": @"https://your-domain.okta.com/api/v1/authn/factors",
                                                                 @"hints": @{
                                                                         @"allow": @[
                                                                                 @"POST"
                                                                                 ]
                                                                         }
                                                                 }
                                                         }
                                                 },
                                             @{
                                                 @"factorType": @"token",
                                                 @"provider": @"RSA",
                                                 @"_links": @{
                                                         @"enroll": @{
                                                                 @"href": @"https://your-domain.okta.com/api/v1/authn/factors",
                                                                 @"hints": @{
                                                                         @"allow": @[
                                                                                 @"POST"
                                                                                 ]
                                                                         }
                                                                 }
                                                         }
                                                 }
                                             ],
                                     @"factor" : @{
                                             @"factorType": @"question",
                                             @"provider": @"OKTA",
                                             @"_links": @{
                                                     @"questions": @{
                                                             @"href": @"https://your-domain.okta.com/api/v1/users/00uoy3CXZHSMMJPHYXXP/factors/questions",
                                                             @"hints": @{
                                                                     @"allow": @[
                                                                             @"GET"
                                                                             ]
                                                                     }
                                                             },
                                                     @"enroll": @{
                                                             @"href": @"https://your-domain.okta.com/api/v1/authn/factors",
                                                             @"hints": @{
                                                                     @"allow": @[
                                                                             @"POST"
                                                                             ]
                                                                     }
                                                             }
                                                     }
                                             },
                                     @"_links" : @{
                                         @"next" : @{
                                             @"name" : @"password",
                                             @"href" : @"https://your-domain.okta.com/api/v1/authn/credentials/change_password",
                                             @"hints" : @{
                                                 @"allow" : @[
                                                           @"POST"
                                                           ]
                                                 }
                                             },
                                         @"cancel" : @{
                                             @"href" : @"https://your-domain.okta.com/api/v1/authn/cancel",
                                             @"hints" : @{
                                                 @"allow" : @[
                                                           @"POST"
                                                           ]
                                                 }
                                             }
                                         }
                                     };
    NSError *error = nil;
    Authentication *auth = [MTLJSONAdapter modelOfClass:Authentication.class fromJSONDictionary:JSONDictionary error:&error];
    NSLog(@"auth Object created!");
    NSLog(@"State token: %@.", auth.stateToken);
    NSLog(@"User Id: %@.", auth.user.userId);
    NSLog(@"User's Name: %@. %@", auth.user.profile.firstName, auth.user.profile.lastName);
    NSLog(@"User's Recovery Question: %@", auth.user.recoveryQuestion.question);
    NSLog(@"Factor.FactorType: %@.", auth.factor.factorType);
    NSLog(@"Factor.questions.href %@.", auth.factor.questions.href);
    NSLog(@"Factor.questions Hint %@.", auth.factor.questions.hints.allow.firstObject);
    NSLog(@"Next Link: %@.", auth.next.href);
    NSLog(@"Next Link Hint: %@.", auth.next.hints.allow.firstObject);
    NSLog(@"Cancel Link: %@.", auth.cancel.href);
    NSLog(@"Cancel Link Hint: %@.", auth.cancel.hints.allow.firstObject);

    NSDictionary *JSONDictionary2 = @{
                                     @"expiresAt":@"2015-06-03T03:52:51.000Z",
                                     @"status":@"SUCCESS",
                                     @"sessionToken":@"00TY-ZxpvCzlS9W_p6e9gNoP-CCZdIfMYGQYRlFZAB",
                                     @"_embedded":@{
                                         @"user":@{
                                             @"id":@"00uhl9V14y7lLk1800g3",
                                             @"profile":@{
                                                 @"login":@"administrator1@clouditude.net",
                                                 @"firstName":@"Add-Min",
                                                 @"lastName":@"O'Cloudy Tud",
                                                 @"locale":@"en_US",
                                                 @"timeZone":@"America/Los_Angeles"
                                             }
                                         }
                                     }
    };

    error = nil;
    auth = [MTLJSONAdapter modelOfClass:Authentication.class fromJSONDictionary:JSONDictionary2 error:&error];
    NSLog(@"auth Object created!");
    NSLog(@"Session token: %@.", auth.sessionToken);
    NSLog(@"User Id: %@.", auth.user.userId);
    NSLog(@"User's Name: %@. %@", auth.user.profile.firstName, auth.user.profile.lastName);
    NSLog(@"User's Recovery Question: %@", auth.user.recoveryQuestion.question);

    // Overcoat Tests
    NSDictionary *parameters = @{
                                 @"username": @"administrator1",
                                 @"password": @"Abcd1234"
                                 };

    AuthAPIClient *authAPIClient = [[AuthAPIClient alloc] initWithBaseURL:[NSURL URLWithString:kBaseURL]];
    authAPIClient.requestSerializer = [AFJSONRequestSerializer serializer];
    [authAPIClient.requestSerializer setValue:kAuthToken forHTTPHeaderField:@"Authorization"];
    authAPIClient.responseSerializer.acceptableContentTypes= [NSSet setWithObject:@"application/json"];
    [authAPIClient POST:@"authn" parameters:parameters completion:^(OVCResponse *response, NSError *error) {
        //TODO - response.result is coming in as NSDictionary necessitating mapping. Need to check why it is not returning Authentication object directly.
        NSDictionary *auth = response.result;
        Authentication *auth1 = [MTLJSONAdapter modelOfClass:Authentication.class fromJSONDictionary:auth error:&error];
        NSLog(@"Overcoat - auth Object created!");
        NSLog(@"Overcoat - Session token: %@.", auth1.sessionToken);
        NSLog(@"Overcoat - Status: %@.", auth1.user.profile.firstName);
    }];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

