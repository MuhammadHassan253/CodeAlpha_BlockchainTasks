// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract TemperatureChecker{
    uint public temperature;

    function setTemperature(uint _temp)public{
        temperature= _temp;
    }

    function checkWeather()public view returns (string memory)  {
        
        if( temperature > 30){
            return "Hot";
        }
        else if (temperature >20){
            return "Normal";

        }
        else 
        return  "cold";
    }
}
*/

contract MathOperations{

    //Add function
    function add() public  returns (uint) {
        uint a=10;
        uint b=10;
        return  a + b;

    }

    //subtraction function but external .. it cannot accessable inside the same function
    function subtract()external  returns(uint) {
        uint x=15;
        uint y=15;
        return x -y;
    }
     
     //multiplication function which only accessable inside this contract and by child contract
    function multiply() internal returns (uint) {
        uint a=20;
        uint b=20;
        return  a*b;

    }

    //divison function
    function remainder()private  returns (uint) {
        uint a=5;
        uint b=5;
        return  a % b;
    }

    function testOperations() public returns( uint, uint)  {

    uint m=multiply();
    uint r=remainder();
    return (m , r);

    }




}