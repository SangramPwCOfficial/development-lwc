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
public with sharing class ApexTut_05_Constructors {
    
    // Class Variable
    Integer testConstructor = 23;
    Boolean isThisCorrect;
    Account acc;
    DateTime todaysDate; 

    // Constructors
    // - A cunstructor defined the set of code hat runs when a class is instantiated. We can define a constructor,
    //   but if underfined, there's a constructor present for every class. It does not have any arguments.
    // - The only difference between a constructor and a method is that constructor doesn't have a return type and is of the same name of the class.
    // - To instantiate a class, we can use the new keyword.
    // - Costructors can be polymorphic.
    // - When we are doing constructor overloading, it becomes a mandate that we should define the default constructor.
    // - Rule :: If we define a contructor of our own, we need to explicitly define the no argument constructor too.

    // Constructor - executes everytime when a class is instantiated
    ApexTut_05_Constructors() {
        // prep work
        // setting up things
        // Initialization
        System.debug('Constructor Called');
    }

    ApexTut_05_Constructors(Boolean isThisCorrect) {
        this.isThisCorrect = isThisCorrect;
    }

    ApexTut_05_Constructors(Boolean isThisCorrect, Datetime todaysDate) {
        this.todaysDate = todaysDate;
        this.isThisCorrect = isThisCorrect;
    }

    // Method - executes when it is explicitly invoked
    public static void myMethod() {
        System.debug('Method Called');
        System.debug('Integer Value : '+new ApexTut_05_Constructors().testConstructor);
    }

    public static void checkConstructorPolymorphism() {
        System.debug('Second Constructor : '+new ApexTut_05_Constructors(false).isThisCorrect);
        Date myDate = Date.newInstance(2011, 11, 18);
        Time myTime = Time.newInstance(3, 3, 3, 0);
        System.debug('Third Constructor : '+new ApexTut_05_Constructors(true, DateTime.newInstance(myDate, myTime)).todaysDate);
        System.debug('Third Constructor : '+new ApexTut_05_Constructors(true, DateTime.newInstance(myDate, myTime)).isThisCorrect);
        // System.debug('Third Constructor : '+new ApexTut_05_Constructors(DateTime.newInstance(myDate, myTime)).isThisCorrect);
    }

}