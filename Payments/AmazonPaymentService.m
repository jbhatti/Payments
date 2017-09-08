//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"You are paying through Amazon %ld", (long)amount);
}

@end
