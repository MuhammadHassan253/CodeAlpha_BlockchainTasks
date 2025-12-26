// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Simplebank{

    uint public totalAcounts;
    string public bankname;
    uint private  totalBalance;


    struct Account{
        string Username;
        uint AccountNo;
        uint Deposit;
    }

   //We use array to store multiple accounts in bank 
   Account[] private  account; 

    //its run only one time and set the initial values ofvariables 
    constructor(string memory _bankname) { 

        bankname= _bankname;
 

    }

     //this function is use to take data from user for accounts and store in array
    function createAccount(string memory _Username, uint _AccountNo,uint _Deposit) public {
      Account memory newaccount= Account(_Username,_AccountNo,_Deposit);
      account .push(newaccount); //push data to array
        totalAcounts +=1;//increment account by  reach transection

    }

    //this function take index number and give detail of that account which store on it 
    function getbankinfo(uint _index)public view returns (string memory, uint , uint){
        Account memory a= account [_index];
      return (  a.Username,a.AccountNo,a.Deposit );
    }


}