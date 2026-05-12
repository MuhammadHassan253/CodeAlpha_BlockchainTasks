// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract StudentGrade{
    uint M1;
    uint M2;
    uint M3;
    uint M4;
    uint M5;

    function valueAssign(uint _physics, uint _maths,uint _computer,uint _urdu,uint _english)public {
        M1=_physics;
        M2=_maths;
        M3=_computer;
        M4=_urdu;
        M5=_english;
    }

    function average()public  view  returns(uint){
        uint Marks= M1+M2+M3+M4+M5;
        uint Avg= Marks/5;
        return  Avg;
    }
     
     function checkResult()public  view  returns( string memory) {
        uint Avg=average();
           if(Avg >=50){
        return "Pass";
    }else  
    return "Fail";
     }
 
}
*/

/*contract BankAccount{

    string AccountHolder;
    uint balance;
    bool isAccountActive;

    function createAccount(string memory _name, uint _initialDeposit )public {

        AccountHolder= _name;
        balance= _initialDeposit;
        isAccountActive= true;

    }

    function depositMoney(uint _amount)public returns(string memory) {
        uint Amount= _amount;

       // if(isAccountActive== false){
       //     return  "Account not activate"
     //   }

        balance = balance +Amount;

    }

    function WithdrawMoney(uint _amount) public  returns (string memory){
        uint Amount= _amount;

        if (Amount >balance)
        {
            return  "Insufficient Balance"
        }
        else 
        {
            balance =balance - Amount;
        }

    }

    function CheckBlance()public  view  returns (uint){
        return  balance;
    }

    function accountStatus()public  view  returns (string memory){
        uint Balance= CheckBlance();
        if(Balance >1000){
            return "Premium Account"
        }else if(Balance >0){
            return  "Normal account"
        }
        else {
            return "Empty account"
        }
    }
}
*/

contract Reminder{

    function reminder(uint _num,uint _nums) public  view returns(bool){

        if(_num % _nums ==0){
            return true;

        }else {
            return false;
        }
    }
}