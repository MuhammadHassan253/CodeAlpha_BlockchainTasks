// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract CamparisonOperator{
    uint a=323;
    uint b=55;

    function comp() view public {

        require(a<=b ,'The camparison is false');
    }
}