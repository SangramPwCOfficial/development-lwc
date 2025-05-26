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
public with sharing class ApexTut_06_StaticKeyword {
    
    // Static
    // In Apex Classes, we can have static variables as well as methods. However, classes cannot be static.
    // Static keyword is used when we want something to be initialized once along with the class.
    // Internally, when a class is loaded, all static members are initialized first in the order they are written in the class
    // We will notice the use of static variable to avoid recusrsion in triggers.
    // Note :: 
    //       - A static variable is consistent and static only within the scope of the current Apex transaction, which means
    //         as soon as a new transaction begins, it is reset.
    //       - A static variable cannot be used with an instance of a class, it can be used directly.  
    // Instantiating the class makes it non-static in nature, so we cannot call methods which are static after instantiating a class.
    // To call static methods of call we can directly call with dot operator, like this :
    //       : ClassName.methodName(args1, arg2, ....);
    //       - static.static (Class and method both are static in nature)
    // To call non-static methods of call we have to instantiate the class and then call it, like this :
    //       : ClassName clsObj = new ClassName();
    //       : clsObj.nonStaticMethod(args1, args2,.....);
    //       - non-static.non-static (Class and method both are non-static in nature)

    static Integer maxUsersAllowed = 10;
    static Date todaysDate = System.today();
    static List<String> favColorList = new List<String>{'yellow','green','black'};

    public void myNonStaticMethod() {
        System.debug('Non-Static Method');

        // static methods can be called from from non-static methods
        myStaticMethod();
    }

    public static void myStaticMethod() {
        // Member variables cannot be static
        // static Integer xyz = 87;
        System.debug('Static Method');

        // static methods can be called from from non-static methods
        // myNonStaticMethod();

        // To call non-static methods from static methods we have to instantiate the class.
        ApexTut_06_StaticKeyword classObj = new ApexTut_06_StaticKeyword();
        classObj.myNonStaticMethod();
    }
}