/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 30-05-2025
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

    // Use Case - 2 :: Write a method that alerts you based on the schedule it is.
    //
    // - If its 9 AM, it's breakfast time.
    // - If its 10 AM, it's tutorial time.
    // - If its 1 PM, it's lunch time.
    // - If its 4 PM, it's tutorial time.
    // - If its 6 PM, it's dinner time.
    // - If its 9 PM, it's sleep time.
    // - If none of these times, it's free time! Enjoy

    public static void handlemySchedule(Integer currentTimeInHours, String partOfDay, String userName) {

        if(currentTimeInHours == 9){
            if(partOfDay == 'AM'){
                System.debug('Hey '+userName+' it\'s your breakfast time. Please have your breakfast.');
            }
            if(partOfDay == 'PM'){
                System.debug('Hey '+userName+' it\'s your sleep time. Please hit the bed.');
            }
        }

        else if(currentTimeInHours == 10) {
            System.debug('Hey '+userName+' it\'s your tutorial time. Please login into your Youtube Tutorials.');
        }

        else if(currentTimeInHours == 1) {
            System.debug('Hey '+userName+' it\'s your lunch time. Please have your lunch.');
        }

        else if(currentTimeInHours == 4) {
            System.debug('Hey '+userName+' it\'s your tutorial time. Please login into your Youtube Tutorials.');
        }

        else if(currentTimeInHours == 4) {
            System.debug('Hey '+userName+' it\'s your dinner time. Please have your dinner.');
        }

        else {
            System.debug('Hey '+userName+' it\'s free time now! Enjoy, Have fun!!');
        }

    }
    
}