//
//  StripePaymentService.m
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"You are paying through Stripe %ld", (long)amount);
}
@end
