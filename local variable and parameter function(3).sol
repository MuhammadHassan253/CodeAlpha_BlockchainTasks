// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract  addition{

    //state variable 
    uint addvalues;

    //function of addition
    //num1 and num2 are function parameters
    function add(uint _num1, uint _num2) public pure returns (uint){
        uint result= _num1+_num2;
        return  result;
    }

    // also add function but with local variables not parameters
    function add() public pure returns (uint){
        uint a=10;
        uint b=20;
        uint Result= a+b;
        return Result;
    }
}