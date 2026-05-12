// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;
/*
contract Enum{
    enum shirtColour{Red, White, Blue}
    shirtColour choice;
    shirtColour constant DefaultShirt= shirtColour.Blue;

    function setWhite()public {
        choice=shirtColour.White;

    }

    function getChoice()public view  returns (shirtColour){
        return choice;
    }

    function getDefaultChosice()public view  returns (uint) {
        return  uint( DefaultShirt);

    }
}

*/
contract Enum{
    enum TrafficLight{Red,Green,Yellow}
    TrafficLight Choice;
    TrafficLight constant Default= TrafficLight.Yellow;

    function setGreen()public {
        Choice=TrafficLight.Green;
    }

    function getChoice()public  view returns (TrafficLight){
        return Choice;
    }

    function getDefault()public  view returns(uint){
        return uint(Default);
    }
}