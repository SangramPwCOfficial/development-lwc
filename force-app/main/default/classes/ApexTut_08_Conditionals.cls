/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 25-05-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   25-05-2025   Sangram Keshari Upadhyaya   Initial Version
**/
public with sharing class ApexTut_08_Conditionals {
    
    // Use Case - 1 :: Write a method that sends an alert based on the kind of user action.
    //
    // - If user made a purchase, send an alert.
    // - If user made is a premium member, send an alert with a coupon code.
    // - If user has signed up, send an alert for welcome bonus.
    // - If user has requested a refund, send an alert for customer satisfaction
    // - If user has done none of them, don't send any alerts.
    
    public static void handleCustomerInteractions(String customerType, Decimal purchaseAmount, Boolean isNewCustomer, Boolean refundRequested) {

        if(purchaseAmount >= 0) {
            System.debug('Congratulations, your purchase was successful!');
        }

        if(customerType == 'Premium User') {
            System.debug('Thank you for your purchase, Here\'s your coupon code edlm94 for 40% off');
        }

        if(isNewCustomer == true) {
            System.debug('Welcome to our company, Here\'s 500 added to your wallet as welcome bonus!');
        }

        if(refundRequested == true) {            
            System.debug('Sorry for the quality, Please fill out the Survey form!');
        }

        else {
            System.debug('Thank you!');
        }

    }
    
}