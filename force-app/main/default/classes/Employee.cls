/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 25-05-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   04-01-2024   Sangram Keshari Upadhyaya   Initial Version
**/
public virtual class Employee {

    public Integer staffId;
    public Integer workingHours;

    public static void completeJiraStories() {

    }

    public virtual void markAttendence() {
        System.debug('Mark attendence for the Employee!');
    }

    public static void deliverQuality() {

    }

}