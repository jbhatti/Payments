//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"You are paying through Paypal %ld", (long)amount);
}

@end
