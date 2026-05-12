// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract FinalExercise{

    uint a=300;
    uint b=12;
    uint f=47;

    function finalize()public  view returns(uint){
        uint d=23;

          d*=d;  //it multiply variable by itself
          d-= b ; //the result subtract from b variable

            if(a >=a && b<f ){   //checl the conditions
            return d;
        }
        else {
            return 23;
        }

       


    
    }

}