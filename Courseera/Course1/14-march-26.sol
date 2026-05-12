// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

//today code is all about local and state variable using functions 

contract learning{

    uint a=50; //State variable 
    //if we declear the state variable so the local variable will superceed it..

    function addvalues()public view  returns (uint){
       // uint a=5; //local variable only access inside functions
        uint b=10;
        uint result=a+b;
        return result;
    }

    function modifiedvalue() public  view returns (uint){
       // uint a=3;  //local variable 
        uint b=7;
        uint result= a+b;
        return result;
    }

    /*from here we clear that state variable have high priority it will be accessible inside all functions ..
    while local variables only accessable in a give function of a body.*/
    

}