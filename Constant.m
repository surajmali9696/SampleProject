//  Constant.m
//  Created by Arya OmniTalk on 01/03/16.
//  Copyright © 2016 AryaOmniTalk. All rights reserved.

#import "Constant.h"


@implementation Constant

//NSURLSession Class
+(void)getJsonResponse:(NSString *)urlStr CommanParamterList :(NSString *)CommanParamterList success:(void (^)(NSDictionary *responseDict))success failure:(void(^)(NSError* error))failure
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url
                                                           cachePolicy:NSURLRequestUseProtocolCachePolicy
                                                       timeoutInterval:60.0];
    
    NSData *postData = [CommanParamterList dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:postData];
    [request setURL:url];
    
    // Asynchronously API is hit here
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                    NSLog(@"%@",data);
                                                    if (error)
                                                        failure(error);
                                                    else {
                                                        NSDictionary *json  = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                                                        NSLog(@"%@",json);
                                                        success(json);
                                                    }
                                                }];
    [dataTask resume];
}

@end
