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
public class ApexTut_02_AccessModifiers {

    // Access Modifiers
    // Types :
    //      - global : Accessible to the entire org, accessible everywhere
    //      - public : Accessible within the application and namespace
    //      - private : Accessible only within the section of code, default access for inner classes is private

    // The top level class can only be defined global or public not private

    private without sharing class MyPrivateInfo {
        public List<Account> getAccountData(){
            List<Account> accList = [SELECT Id, Name FROM Account WHERE Name LIKE 'Bur%' WITH SECURITY_ENFORCED];
            return accList;
        }
    }

    public without sharing class MyPublicInfo {
        public List<Opportunity> getOpportunityData(){
            List<Opportunity> oppList = [SELECT Id, Name FROM Opportunity WHERE Name LIKE 'Bur%' WITH SECURITY_ENFORCED];
            return oppList;
        }
    }

    public static void getDataFromInnerClass() {
        MyPrivateInfo myInfo = new MyPrivateInfo();
        System.debug('Account Details : '+myInfo.getAccountData());
    }
    
    public static void accessVariablesFromOtherClass() {
        Integer checkCount = new ApexTut_03_ClassVariables().i;
        // Boolean checkValue = new ApexTut_03_ClassVariables().b; // variable not visible as it's access modifier is private
        System.debug('Check Count : '+checkCount);
    }

}