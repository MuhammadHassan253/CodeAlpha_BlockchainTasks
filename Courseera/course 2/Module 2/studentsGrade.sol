// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract gradeManagment{

    address owner;
struct student{
    string name;
    uint age ;
    string grade;
    bool isActive;
}

mapping (uint=> student) public  IdLookup;

uint [] public studentsId;

function getTotalStudents()public view returns (uint){
    return studentsId.length;
}

modifier  onlyAdmin{
    require(msg.sender==owner);
    _;
}
modifier  isStudentActive(uint id){
    require(isActive==true);
    _;
}

function addStudent(string memory _name,uint _age,string memory _grade)public isStudentActive {
  

}
 function getStudent(uint id)public view  returns (student){
    return student;
 } 

 function getGrade(uint id)public view returns (bool) {
    if(isActive==true){
        
        _grade=student[grade];
    }

    function ActiveStudents(uint id )public view onlyAdmin returns (bool) {
        return isActive=true;

    } 
      function DeactivateStudents(uint id )public view onlyAdmin returns (bool) {
        return isActive=false;

    } 

    function updateGrade(uint _id,string grade)public  onlyAdmin{
        
    }
    

 }


}