// SPDX-License-Identifier: MIT
pragma solidity  0.8.3;

contract Owned {

    address  owner;

    constructor (){
        owner= msg.sender;
    }

    modifier  onlyOwner{
        require(msg.sender== owner);
        _;
    }

}

contract Bank is Owned{
    mapping (address =>uint) public balance;

    bool public  bankActive=true;
    uint public miniDeposit=100;

    modifier  isBankActive{
        require(bankActive==true);
        _;
    }

    modifier  minAmount(uint amount){
        require(amount >=miniDeposit);
        _;
    }

    function deposit(uint amount)public  isBankActive minAmount(amount){
        balance[msg.sender]+=amount;
        }
    

    function withdraw(uint amount)public isBankActive {
      
      require(amount <= balance[msg.sender]);
      balance[msg.sender] -=amount;
    }

    function getMyBalance()public view returns (uint){
        return  balance[msg.sender];
    }

    function closeBank()public onlyOwner{
        bankActive=false;
    }

    function openBank()public onlyOwner{
        bankActive= true;
    }
    function changeMinDeposit(uint value)public onlyOwner{
        miniDeposit=  value;

    }  

}