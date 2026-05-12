// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Base{
    uint X;
    constructor (uint _number) public {
        X=_number;
    }

    function getdata() public view returns (uint){
        return X;
    }
}

contract derives is Base(5){
 /*  constructor (uint n) Base(n)public {

 }
 */
    function getoutput()public view returns (uint){
        return X;
    }


}