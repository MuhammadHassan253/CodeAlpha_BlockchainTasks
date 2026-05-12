// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract myLoopingPracticeContract{
    uint []  longList= [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

    uint []   numbersList=[1,4,34,56];

    function checknumber(uint _number)public  view returns (bool){
        for(uint i=0;i < numbersList.length; i++){
            if( _number== numbersList[i]){
                 return true ;
            }
              
        }
        return  false;
    }

       function countEvenNumber()public  view  returns (uint){
                 uint count=0;
                for (uint i=0; i<longList.length; i++){
                    if(longList[i]%2==0){
                        count++;
                    }

                }
                return count;
            }
}