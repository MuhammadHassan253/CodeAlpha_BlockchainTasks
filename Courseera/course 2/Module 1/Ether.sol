// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract Ethers{

    function test()public {
        assert(2000000000000000000 wei == 2 ether);
        assert(2 wei==2);

        assert(2 ether== 2e18);
    }
}
