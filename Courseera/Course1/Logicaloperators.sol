// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

//so basically we have 3 types of operator
// a>b && b<a (its mean a is grater then b and b is less then a for tis wee need to proof both statment as true
// a>b || b<a (its mean a is grater then b and b is less then a for this operator only one statement needs to be true.
// a != b  (its mean a is not equal to b )

contract LogicalOperators{

    uint a=17;
    uint b=32;

    function operator()public view returns(uint){
        uint mult= a*b;
        uint  result= mult/b;

        if(b > a && a != b){
            return mult;
        }
        
    }
}