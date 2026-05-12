// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;
/*
contract TrafficLight{
    enum TrafficLight{Red, Yellow, Green}

    TrafficLight trafficlightType;

    constructor ()public  {
        trafficlightType= TrafficLight.Red;
    }

    function goRed()public {
        trafficlightType= TrafficLight.Red;


    }
    function goYellow()public {
        trafficlightType= TrafficLight.Yellow;
    }

    function goGreen()public {
        trafficlightType=TrafficLight.Green;
    }
    function getLight()public view returns (TrafficLight){
        return  trafficlightType;
    }

    function canGo()public  view returns (bool){
        if (trafficlightType== TrafficLight.Green){
            return true;
        }
        return  false;
    }



}
*/

contract studentResult{

    enum Grade{Fail, Pass, Merit, Distinction}

    string []public  students;
    Grade []public  grades;

    function addStudents(string memory name, Grade grade)public {
        students.push(name);
        grades.push(grade);
    }

    function removeStudent(uint index)public {
        students[index]= students[students.length-1];
        students.pop();

        grades[index]= grades[grades.length-1];
        grades.pop();
    }

    function getStudent()public view returns (string[] memory){
        return  students;
    }

    function getGrades()public view returns (Grade [] memory){
        return grades ;
    }

    function getStudentGrade(uint _index)public view returns(Grade) {
      return  grades[_index];
          
    } 

    function updateGrade(uint _Index, Grade newGrade)public  
    {
      grades[_Index]= newGrade;
        
    }
}

