// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract Carinfo{
    string public carname;
    uint public  carprice;
    bool public isAvailable;

    function setCarInfo(string memory _carName,uint _price, bool _available)public {
       carname= _carName;
       carprice=_price;
       isAvailable= _available;
    }

}