/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 25-05-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   24-05-2025   Sangram Keshari Upadhyaya   Initial Version
**/
public class ApexTut_01 {

    public static void greetMe(String userName){
        System.debug('My name is '+userName);
    }

    public static void understandBlocksAndStatements() {
        
        // Statements
        // A coded instruction that ends with a semicolon and performs a specific action. 
        Integer i = 0;
        String nameOfCharacter = 'Sangram Rock!';
        System.debug('My name is '+nameOfCharacter);

        //Block
        // A set of statements surrounded by curly braces.
        if(i != 10){
            nameOfCharacter = 'Sangram Star!';
        }

        System.debug('My name is '+nameOfCharacter);
    }

}