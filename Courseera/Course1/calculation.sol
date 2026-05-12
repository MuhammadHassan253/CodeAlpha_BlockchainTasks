// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
contract Calculations{

function getresult1()public view  returns (uint){
    uint a=15;
    uint b=20;
   

    uint result1= a+b;
    return  result1;
}
function getresult2()public view returns (uint){
     uint c=55;
    uint d=55;
     uint result2= c * d;
     return result2;
}


   

}