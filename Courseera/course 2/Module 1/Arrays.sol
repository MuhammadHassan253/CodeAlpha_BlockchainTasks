
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

//What is Array??
// Array is a data structure which store elements in sequantional form of the same data-types

/*contract Array{

//1:  How to declear array??
    //its declear by squear brackets []

//datatype brackets , visibility, arrayname; 
    uint []public Array1;

//2: push,pop,length methods

  //Push: its a function with the help of this function we add elements to array from end side
  function push(uint _number)public {
    Array1.push(_number);
  }

  //pop:pop is a function with the help of this we remove the elements from array from its end 
  function pop()public {
    Array1.pop();
  }

  //Length:its also an function which tell how many items are in array
  function getlength()public view returns(uint){
    return  Array1.length;

  }

  //Delete: its a funtion when we want to pop a specific values from array so we
  //use deete functon and that index number on which that value stores.
  function remove(uint i)public {
    delete Array1[i];
  }
}
*/

contract Arraypractice{

      uint []public  changeArray ;

      function removeElement(uint index)public {
        changeArray[index]= changeArray[changeArray.length-1];
        changeArray.pop();
      }

  function test()public {
   /* changeArray.push(1); //index 0
    changeArray.push(2); //1
    changeArray.push(3); //2
    changeArray.push(4); //3
*/
    for(uint i=1; i<=4;i++){
        changeArray.push(i);
    }

    //removeElement(1);  //remove index 1

  }

  // This function returns the WHOLE array!
function getArray() public view returns(uint[] memory) {
    return changeArray;
}




}