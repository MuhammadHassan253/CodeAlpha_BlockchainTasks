// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract SimpleCalculator{

    uint public a;
    uint public b;

    function setNumbers(uint _a, uint _b) public {
        a= _a;
        b= _b;

    }

    function add()public view returns(uint){
        uint result=a+b;
        return result;
    }

    function sub()public  view returns (uint){
        uint result= a-b;
        return result;
    }

    
    function mult()public  view returns (uint){
        uint result= a*b;
        return result;
    }

    
    function reminder()public  view returns (uint){
        uint result= a%b;
        return result;
    }

}
*/

/*contract NumberAnalyzer{

    uint public  x;
    uint public  y;
    uint public  z;


    function setNumber( uint _x, uint _y, uint _z) public {
        x= _x;
        y= _y;
        z= _z;
    }

    function sum() public view  returns (uint){
        return x+y+z;
    }

    function average()public view returns(uint){
        uint sum1= x+y+z;
        uint avg= sum1/3;
        return avg;
    }

    function complexCalculation()public view  returns(uint){
        uint result= (x*y) +(z%x) -(y/x);
        return result;
    }


}
*/
contract AdvancedCalculator{

    uint public  a;
    uint public  b;
    uint public  c;


    function setValues( uint _a, uint _b, uint _c) public {
        a= _a;
        b= _b;
        c= _c;
    }

    function squareSum()public  view returns(uint){
        uint result= (a*a) +(b*b)+(c*c);
         return  result;
    }

    function mixedOperator()public view returns (uint){
        uint result= (a+b) * c - (a%b);
        return result;
    }

    function ultimateCalculation()public  view returns (uint){
        uint result= ((a*b)+ (b*c) +(c*a))/3;
        return result;
    }

}