// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Owned {
    address owner;

    constructor (){
        owner= msg.sender;
    }

    modifier  onlyOwner{
        require(msg.sender==owner);
        _;
    }

}


contract TokenSale is Owned{
    uint public  tokenPrice;
    uint public  tokenSoled;
    bool public  saleActive =true;

    mapping  (address =>uint)tokenBalannce;

    modifier  costs(uint price){
        require(msg.value== price);
        _;
    }

    modifier issaleActive{
        require(saleActive==true);
        _;
    }


    constructor (uint initialTokePrice) {
        tokenPrice= initialTokePrice;

       
    }
//
    function buyToken()public  payable  issaleActive  costs(tokenPrice){
        tokenBalannce[msg.sender]++;
        tokenSoled++;

    }

    function getMyToken()public  view  returns (uint){
        return  tokenBalannce[msg.sender];
    }

    function changePrice(uint newPrice )public  onlyOwner{
        tokenPrice=newPrice;
    }

    function stopSale()public  onlyOwner{
        saleActive= false;
    }

    function startSale()public  onlyOwner{
        saleActive= true;
    }


}