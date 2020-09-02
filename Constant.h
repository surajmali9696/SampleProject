//
//  Constant.h
//  MyCab
//
//  Created by Arya OmniTalk on 01/03/16.
//  Copyright © 2016 AryaOmniTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constant : NSObject

//NSURLSession Class
+(void)getJsonResponse:(NSString *)urlStr CommanParamterList :(NSString *)CommanParamterList success:(void (^)(NSDictionary *responseDict))success failure:(void(^)(NSError* error))failure;

@end
