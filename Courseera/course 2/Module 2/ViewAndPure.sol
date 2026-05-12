// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;


/*view::  The function modifier which tell to ide that this
function can only read the data and return it it cannot modify 
any data inside the function.

PURE:: This function modifier tell the solidity or IDE that this function
 can return the  methimatical operations */

 contract  PracticeViewPure{
    uint value;

    function setValue(uint _value)external{
        value= _value;
    } 

    function multiply ()external pure returns (uint) {
       return  3*7;
    }

    function valuePlusThree()external view  returns(uint){
        return  value + 3;
    }
 }


