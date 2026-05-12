// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract fundedAccount{

    uint balance=37;
    string  Account= "allow him to account";
    string Naccount="insuficient balance";

    function account()public view returns (string memory) {
        if (balance==36){
         return Account;
        }
        else {
          return Naccount;
        }
    }
}