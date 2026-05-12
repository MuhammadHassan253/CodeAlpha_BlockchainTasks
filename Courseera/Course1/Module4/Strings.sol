// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract Strings{

    string W= "kenawa";

    function Checkstring()public  view returns(string memory){
        return W;
    }


    function length() public view  returns (uint){
        bytes memory H= bytes(W);
        return H.length; 
    }

}