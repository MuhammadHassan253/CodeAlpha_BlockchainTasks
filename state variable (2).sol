// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract  StateVSlocal{

    uint public  storednumber;

    //this function change the state cost gas
    function setNumber(uint _num) public {
        storednumber= _num;

    }

    //this function uses local variable no gas fee
    function doubleNumber(uint _num)public  pure returns (uint){
        uint temp= _num* 2;
        return temp;
    }

}