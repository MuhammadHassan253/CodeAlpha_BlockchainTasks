// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Animal {
    string name;
    uint age;

    constructor(string memory _name, uint _age) public {
        name = _name;
        age  = _age;
    }
}

contract Dog is Animal {
    uint height;

    // ✅ Pass name & age to Animal constructor
    constructor(string memory _name, uint _age, uint _height) Animal(_name, _age) public {
        height = _height;
    }

    function getName() public view returns(string memory) {
        return name;
    }

    function getHeight() public view returns(uint) {
        return height;
    }
}

contract Horse is Animal {

    // ✅ Must call Animal constructor
    constructor(string memory _name, uint _age) Animal(_name, _age) public {
    }

    function getAge() public view returns(uint) {
        return age;
    }
}