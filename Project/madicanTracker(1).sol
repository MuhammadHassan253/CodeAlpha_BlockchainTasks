
// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract MedicineTracker{
    uint public totalmedicine; //state variable


    struct Medicine{
        string name;
        uint price;
        uint expiryDate;
        address manufacture; //its allow only a specific manufecture to add madican
    }

    //Array to store multiple madicine.
    Medicine[] private  medicine;



    /* constructor run only one time  and its set 
    the inital value of madican
    */
    constructor(){

     totalmedicine=0;
    }

          //add new madicine
    function addMadicine(string memory _name, uint _price,uint _expiryDate) public  {
       Medicine memory newmedicine= Medicine(_name, _price,_expiryDate,msg.sender );
       medicine.push(newmedicine);//we push newmadican in array(medicine)
        totalmedicine +=1; //increment the medicine index  by 1 after every add function

    }
     
     //This function take index number and and present the detail of specific madican store on that number
    function getMedicine(uint _index)public  view returns (string memory,uint, uint,address){
        Medicine memory m= medicine[_index];
        return (m.name, m.price,m.expiryDate,m.manufacture);
    }
    
}

