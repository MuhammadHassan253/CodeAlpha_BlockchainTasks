// SPDX-License-Identifier: MIT
pragma solidity  0.8.3;

contract DestructureFunction{
    uint public changedValue;
    string public  tom='Hi';

  //  string  public Name;
  //  uint public  Height;

    function f()public pure   returns (uint , bool, string memory ){
        return (3, true, 'Bye');

    }

    //What if i want to set value 3 to state variable changedVariable

    function h()public {
        (changedValue,,tom)= f();
    }

    function studentInfo(string memory name, uint height)public pure  returns (string memory ,uint){
       // Name =name;
       // Height=height;
        return  (name , height);
    }



}