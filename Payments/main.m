//
//  main.m
//  Payments
//
//  Created by Jaison Bhatti on 2017-09-08.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int amountOwed = (arc4random_uniform(899) + 101);
        
        NSLog(@"\n Thank you for shopping at Acme.com \n Your total today is $%d \n Please select your payment method: \n 1: Paypal, 2: Stripe 3: Amazon", amountOwed);
        
        
        
        
            char inputChars[255];
            
            printf("Input your payment method: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSInteger inputInteger = [inputString intValue];
            
            PaymentGateway *newPaymentGateway = [[PaymentGateway alloc] init];
            
            
            switch (inputInteger) {
                case 3: {
                    AmazonPaymentService *newAmazonPaymentService = [[AmazonPaymentService alloc] init];
                    newPaymentGateway.paymentDelegate = newAmazonPaymentService;
                }
                    break;
                
                case 2: {
                    StripePaymentService *newStripePaymentService = [[StripePaymentService alloc] init];
                    newPaymentGateway.paymentDelegate = newStripePaymentService;
                }
                    break;
                
                case 1: {
                    PaypalPaymentService *newPaypalPaymentService = [[PaypalPaymentService alloc] init];
                    newPaymentGateway.paymentDelegate = newPaypalPaymentService;
                }
                    break;
                
                default:
                    break;
            }
            
            [newPaymentGateway processPaymentAmount:amountOwed];
            
            
            
            
            
            
        
    }
    return 0;
}
