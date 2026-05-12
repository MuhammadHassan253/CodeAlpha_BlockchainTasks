// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Visibility{
      uint public  data=55;

    function x() public  returns (uint){
         data=5;
        return data;
    
    }


    function y() public  view  returns (uint){
      //  uint data=5;
        return data;
    }
}