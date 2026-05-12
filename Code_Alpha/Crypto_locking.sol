// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptoLock {

    mapping(address => uint) public balances;
    mapping(address => uint) public unlockTime;

    function deposit(uint _lockTime) public payable {

        require(msg.value > 0, "Send some Ether");

        balances[msg.sender] += msg.value;
        unlockTime[msg.sender] = block.timestamp + _lockTime;
    }

    function withdraw() public {

        require(block.timestamp >= unlockTime[msg.sender], "Funds are locked");
        require(balances[msg.sender] > 0, "No balance");

        uint amount = balances[msg.sender];
        balances[msg.sender] = 0;

        payable(msg.sender).transfer(amount);
    }

}