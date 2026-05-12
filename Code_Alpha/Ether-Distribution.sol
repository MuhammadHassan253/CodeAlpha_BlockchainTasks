// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiSend {

    function sendEther(address payable[] memory receivers) public payable {

        uint amount = msg.value / receivers.length;

        require(amount > 0, "Send more Ether");

        for(uint i = 0; i < receivers.length; i++) {
            (bool success, ) = receivers[i].call{value: amount}("");
            require(success, "Transfer failed");
        }
    }

}