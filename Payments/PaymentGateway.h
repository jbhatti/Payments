//
//  PaymentGatewway.h
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger)amount;

@end


@interface PaymentGateway : NSObject

- (void) processPaymentAmount:(NSInteger)amount;

@property (strong) id<PaymentDelegate> paymentDelegate;



@end
