//
//  PaymentGatewway.m
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger)amount {
    [self.paymentDelegate processPaymentAmount:(NSInteger)amount];
}

@end
