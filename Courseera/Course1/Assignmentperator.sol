// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;



//a +a +b so we write it (a += b)


contract assignemnt{
    uint a=10;
    uint b=20;

    function assignment() public view returns (uint){
        uint c=30;

        return  c+=  a;
    }


}