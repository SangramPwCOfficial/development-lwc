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
public with sharing class ApexTut_03_ClassVariables {
    
    // Variables
    // variables have to be declared with the data type as Apex is strongly typed language.
    // Data Types are of types :
    //  - Primitive Data Type :
    //      - Integer
    //      - Boolean
    //      - String
    //      - Date
    //      - DateTime
    //      - Decimal
    //      - Double
    //      - Id
    //      - Long
    //      - Object
    //      - Time
    //  - Non-Primitive Data Type :
    //      - Lists
    //      - Sets
    //      - Maps
    //      - sObjects

    // Class Variable
    // To use a variable defined at the class level in the same class, we have to create object of the class.
    public Integer i = 89;

    public static void methodVariable() {
        Integer i = 45;

        // Class Variable
        System.debug('Inside Method '+i);

        // Method Variable
        System.debug('Inside Class '+new ApexTut_03_ClassVariables().i);
    }

    // Or else have to define the variable with static keyword but by defining it static it cannot be referenced in non-static methods.
    public static String s = 'Sam';
    private static Boolean b = TRUE;
    static Decimal db = 34.02;
    public static Double pi = 3.1423433;
    static Long lng = 2147483648L;
    static Id accId = '0015h00001UexuPAAR';
    static Account accObj = new Account();
    static Date todaysDate = Date.today();
    static Datetime dateTimeNow = Datetime.now();
    static Time timeNow = Time.newInstance(04, 56, 57, 929);
    
    public static void getVariablesValues(){
        System.debug('Integer : '+new ApexTut_03_ClassVariables().i);
        System.debug('String : '+s);
        System.debug('Boolean : '+b);
        System.debug('Decimal : '+db);
        System.debug('Long : '+lng);
        System.debug('Double : '+pi);
        System.debug('Account Id : '+accId);
        System.debug('Account Object : '+accObj);
        System.debug('Date : '+todaysDate);
        System.debug('Datetime : '+dateTimeNow);
        System.debug('Time : '+timeNow);
    }

}