// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract  ArithmethicOperator{

       uint a=2;  
       uint b=12;
    function EX1()public view returns(uint){
        uint result;
        result= a + b - b + a;
        return result; 

    }

      function EX2()public view returns(uint){
        uint result;
        result= a * b * b -  1;
        return result; 

    }

      function EX3()public   returns(uint ){
        uint result;
        result= b + b++ + a++;
        return result; 

    }

         function EX4()public view returns(uint){
        uint result;
        result= (b%a) +3;
        return result; 

    }



}
*/
contract  NumberAnalyzer{

    uint private  a;
    uint private  b;
    uint private  c;

    function  setNumber(uint _a, uint _b, uint _c) public {
        a= _a;
        b= _b;
        c= _c;
    }

    function sumNumbers() public view returns(uint){
       // uint result;
       // result= a + b + c;
        return a + b + c;
    }

    function avgNumber()public  view returns(uint){
        uint sum= a + b + c;
        uint average= sum/3;
        return average;
    }

    function  complexOperation() public view returns(uint){
        uint result= (a*b) + (c%a) - (b/a);
        return result;
    }

    function multiplyNumber() public  pure  returns (uint){
        uint x =5;
        uint y =5;
        uint result= x*y;
        return  result;
    }
}