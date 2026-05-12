// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
// Write name and age ONCE in Member
contract Member {
    string name;
    uint age;

    constructor(string memory _name, uint _age) {
        name = _name;
        age  = _age;
    }
}

// Teacher just inherits — no repetition!
contract Teacher is Member {
    constructor(string memory n, uint a) Member(n, a) {}

    function getName() public view returns(string memory) {
        return name;  // got from Member!
    }
}

// Student just inherits too!
contract Student is Member {
    uint rollNo;
    constructor(string memory n, uint a, uint _rollNo) Member(n, a) {
        rollNo = _rollNo;
    }

    function getName()public view returns (string memory){

        return  name;

    }
      function getRollNo()public view returns (uint){

        return  rollNo;

    }
}