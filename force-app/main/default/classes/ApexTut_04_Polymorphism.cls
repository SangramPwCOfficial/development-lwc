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
@SuppressWarnings('PMD.ApexDoc')
public with sharing class ApexTut_04_Polymorphism {
    
    /**
    * @description 
    * @author Sangram Keshari Upadhyaya | 25-05-2025 
    * @param String customerType 
    * @return The discount percentage based on the type of customer 
    **/
    private static Decimal returnDiscountForSpecificCustomer(String customerType) {
        if(customerType == 'Distributor') { 
            return 10.0; 
        }

        else if(customerType == 'VP') {
            return 15.0;
        }

        else if(customerType == 'COO') {
            return 25.0;
        }

        else {
            return 7.0;
        }
    }

    /**
    * @description 
    * @author Sangram Keshari Upadhyaya | 25-05-2025 
    * @param String customerType 
    * @param Decimal sellingPrice 
    * @return Decimal 
    **/
    private static Decimal calculateDiscountAmount(String customerType, Decimal sellingPrice) {
        Decimal discountPercent = ApexTut_04_Polymorphism.returnDiscountForSpecificCustomer(customerType);
        Decimal discountAmount = (sellingPrice * discountPercent)/100;
        return discountAmount;
    }

    /**
    * @description 
    * @author Sangram Keshari Upadhyaya | 25-05-2025 
    * @param Decimal sellingPrice 
    * @return Decimal 
    **/
    private static Decimal calculateDiscountAmount(Decimal sellingPrice) {
        Decimal discountAmount = (sellingPrice * 3)/100;
        return discountAmount;
    }

    /**
    * @description 
    * @author Sangram Keshari Upadhyaya | 25-05-2025 
    * @param Decimal sellingPrice 
    * @return Decimal 
    **/
    public static Decimal finalBillingAmount(Decimal sellingPrice) {
        System.debug(sellingPrice - (calculateDiscountAmount(sellingPrice)));
        return sellingPrice - (calculateDiscountAmount(sellingPrice));
    }

    /**
    * @description This is overloaded method with different type of parameters
    * @author Sangram Keshari Upadhyaya | 25-05-2025 
    * @param String customerType 
    * @param Decimal sellingPrice 
    * @return Decimal 
    **/
    public static Decimal finalBillingAmount(String customerType, Decimal sellingPrice) {
        System.debug(sellingPrice - (calculateDiscountAmount(customerType,sellingPrice)));
        return sellingPrice - (calculateDiscountAmount(customerType,sellingPrice));
    }

}