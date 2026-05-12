// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*
STUDENT REGISTRY
contract Person{
    string name;
    uint age;

    constructor(string memory _name,uint _age)public {
        name= _name;
        age=  _age;
    }
}

contract Student is Person{
    uint rollNumber;

    constructor(string memory _name,uint _age,uint _rollNumber)Person(_name, _age){
        rollNumber= _rollNumber;
    }

    function getStudentName()public view  returns (string memory){
        return  name;
    }
    function getRollNumber()public view returns(uint){
        return rollNumber;
    } 
}
*/

/*contract Vehicle{
    string brand;
    uint speed;

    constructor (string memory _brand,uint _speed)public {
        brand =_brand;
        speed =_speed;
    }
}

contract Car is Vehicle{
    uint numDoors;

    constructor(string memory _brand, uint _speed, uint _numDoors)Vehicle(_brand,_speed){
        numDoors =_numDoors;
    }

    function getBrand()public view returns(string memory){
        return  brand;
    }

      function getSpeed()public view returns(uint){
        return  speed;
    }

      function getnumDoors()public view returns(uint){
        return  numDoors;
    }
}
*/

/*contract Account{
    string ownerName;
    uint accountNumber;

    constructor (string memory _ownerName, uint _accountNumber)public{
        ownerName= _ownerName;
        accountNumber= _accountNumber;
    }
}

contract SavingAccount is Account{
    uint balance;

    constructor(string memory _ownerName, uint _accountNumber, uint _balance)Account(_ownerName, _accountNumber){
        balance=_balance;
    }
    function getOwner()public view returns(string memory){
        return  ownerName;
    }

     function getBalance()public view returns (uint){
        return balance;
    }

}

contract CurrentAccount is Account{
    uint overDraftLimit;

    constructor(string memory _ownerName, uint _accountNumber, uint _overDraftLimit )Account (_ownerName, _accountNumber){
        overDraftLimit= _overDraftLimit;
    }
    function getOwner()public view returns(string memory){
        return  ownerName;
    }
    function getLimit()public  view returns (uint)
    {
        return overDraftLimit;
    }

   

}
*/

/*
//Patient - Doctor  
contract Person{
    string name;
    uint age;

    constructor (string memory _name, uint _age)public {
        name= _name;
        age= _age;
    }
}

contract Doctor is Person{
    string Specializition;
    constructor (string memory _name,string memory _Specializition)Person (_name,40){
        Specializition=_Specializition;
    }

      function getName()public view returns(string memory){
        return name;
    }
    function getSpecializition()public  view returns(string memory){
        return Specializition;
    }
}

contract Patient is Person{
    string disease;

    constructor (string memory _name,uint _age, string memory _disease)Person(_name, _age){
        disease =_disease;
    }

    function getName()public view returns(string memory){
        return name;
    }

    function getDisease()public view returns (string memory){
        return disease;
    }

}
*/

contract Character{
    string charterName;
    uint lavel;

    constructor (string memory _charterName, uint _lavel)public {
        charterName= _charterName;
        lavel= _lavel;
    }

}

contract Warrior is Character{
    uint swordPower;
    constructor(string memory _charterName,uint _lavel, uint _swordPower)Character(_charterName,_lavel){
        swordPower = _swordPower;
    }

     //Inherit function from parent
    function getName()public  view  returns(string memory){
        return  charterName;
    } 
    
     //Inherit function from parent
    function getLavel()public view returns (uint){
        return lavel;
    }

    function getSwordPower()public view returns (uint){
        return swordPower;
    }
}

contract Mage is Character{
        uint magicPower;
    constructor(string memory _charterName,uint _lavel, uint _magicPower)Character(_charterName,_lavel){
        magicPower = _magicPower;
    }

          //Inherit function from parent
    function getName()public  view  returns(string memory){
        return  charterName;
    } 
    
     //Inherit function from parent
    function getLavel()public view returns (uint){
        return lavel;
    }

    function getMagicPower()public  view returns(uint){
        return magicPower;
    }
    

    
}