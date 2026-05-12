// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract StringPracticeExercise{

    string public  favoriteColor= "Blue";

    function Literal()public  view returns(string memory){
        return  favoriteColor;
    } 

    function changeColour(string memory _Colour)public  returns (string memory){
        // string colourChanged= favoriteColor;
        favoriteColor = _Colour;
        return  favoriteColor;
    }

    function sizeOfString()public  view returns (uint){
        bytes memory A= bytes (favoriteColor);
        return A.length;
    }
}