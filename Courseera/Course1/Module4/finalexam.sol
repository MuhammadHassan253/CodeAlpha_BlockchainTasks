// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract  StudentData{

    string public  studentName="Hassan";
    uint [] public  marks=[65,70,80,90,50];

    function changeName(string memory _name)public returns (string memory){
        studentName= _name;
        return studentName;
    }

    function getNameLength()public view returns (uint){
        bytes memory X= bytes (studentName);
        return X.length;
    
    }

    function checkMarks(uint _Marks)public  view returns (bool){
        for(uint i=0; i< marks.length; i++){
            if(_Marks == marks[i]){
                return true;
        }
      
      }
      return  false;
 }     

    function countPassedStudents()public view returns (uint){
         uint pass=0;

        for(uint i=0; i<marks.length; i++){
            if(marks[i] >=60){
                pass++;
            }

            
        }
        return pass;
    }

    function averageMarks()public view returns (uint){
       uint sum=0;
       for(uint i=0;i<marks.length; i++){
        sum +=marks[i];
       }
       uint avg= sum/5;
        return avg;
    }
}