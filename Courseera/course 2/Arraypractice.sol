// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

contract  ARRAY{

    uint [] public  marks;

    function addMarks(uint _mark)public {
     /*   marks.push(5);
        marks.push(10);
        marks.push(15);
        marks.push(20);
*/
       marks.push(_mark);
    }

    function removeMarks(uint index)public {
        marks[index]=marks [marks.length-1];
        marks.pop();
    }

    function getHighMarks()public view returns (uint){

     uint highest= marks[0];
     for(uint i=0; i<marks.length;i++){
        if (marks[i]>highest){
            highest= marks[i];
        }
     }
     return highest;

    }

    function getLowMarks()public view returns (uint){
        uint low= marks[0];
        for (uint i=0;i<marks.length;i++){
            if(marks[i]<low){
                low =marks[i];
            }
        }
        return  low;
        
    }

    function Average()public view returns (uint){
        uint X;
        uint avg;
        for(uint i=0; i<marks.length;i++){
            X +=marks[i];
        }
        avg= X/marks.length;
        return avg;
        
    }

    function getMarks()public view returns(uint[] memory )
    {
        return marks;
    } 

}