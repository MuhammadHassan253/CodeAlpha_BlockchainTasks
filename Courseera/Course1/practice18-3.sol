// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract  Calculator{

    //uint result;

    function add(uint a, uint b)public pure returns(uint) {
     uint  result= a+b;
       return result;
    }

    function Subtract(uint x, uint y)public pure  returns (uint){
        uint result =x-y;
         return result;

    }


}
*/

/*contract  StudentManager{

    string public name;
    uint public age;
    bool public isEnrolled;

    function setStudent(string memory _name, uint _age, bool _enrolled)public {
        name= _name;
        age =_age;
        isEnrolled = _enrolled;
    }

    function getStudentName()public view returns (string memory){
       return  name;

    }

    function getStudentAge()public view returns (uint){
       return  age;
    }
}
*/

contract SimpleBank{

    uint public balance;

    function deposit(uint _amount)public {
        balance= balance + _amount;
    }

    function withdraw( uint _amount)public {
        balance = balance - _amount;

    }
     
    function getBalance()public view returns (uint){
        return balance;
    }
}