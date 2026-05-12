// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract loops{
    uint [] public numbers=[1,2,3,4,5,6,7,8,9,10];

    function checkMultiple(uint _number)public  view returns (uint){

        uint count=0;
        for(uint i=1; i< numbers.length; i++){
            if(checkmultiplevalidity (numbers[i], _number)){
                count++;
            }

        }
        return count;
    }

    function checkmultiplevalidity(uint _num, uint _nums)public  view  returns (bool){
     
     if(_num % _nums==0){
        return true;
     }
     else {
        return false;
     }
    }
}
