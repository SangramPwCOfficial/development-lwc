/**
 * @description       : 
 * @author            : Sangram Keshari Upadhyaya
 * @group             : 
 * @last modified on  : 19-05-2025
 * @last modified by  : Sangram Keshari Upadhyaya
 * Modifications Log
 * Ver   Date         Author                      Modification
 * 1.0   19-05-2025   Sangram Keshari Upadhyaya   Initial Version
**/
import { LightningElement } from 'lwc';

export default class HelloQuerySelctor extends LightningElement {

    userNames = ['Sangram', 'Vinayak', 'Rajan', 'Babara', 'Tim'];

    fetchDetailHandler(){
        let elem = this.template.querySelector('h1');
        elem.style.border = '1px solid Green';
        console.log(elem.innerHTML);

        let elemList = this.template.querySelectorAll('.user');
        Array.from(elemList).forEach(user => {
            user.setAttribute("title", user.innerText);
            console.log(user.innerText);
        })

        let appendChild = this.template.querySelector('.child');
        appendChild.innerHTML = '<p>Hey! I am the child inside the div.</p>';
    }

}