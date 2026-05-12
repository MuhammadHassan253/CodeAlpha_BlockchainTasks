// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract StudentProfile{
    string public studentName;
    uint public studentAge;
    bool public isEnrolled;
    uint public studentMarks;
    string public department;

    function setStudentProfile(string memory _name,uint _age,bool _enrolled,uint _marks,string memory _department )public  {

      studentName=_name;
      studentAge=_age;
      isEnrolled=_enrolled;
      studentMarks=_marks;
      department=_department;

      
          
    }
}
*/
contract  Universityinfo{
    string public universityname;
    string public city;
    uint public totalStudents;
    uint public foundedyear;
    bool public isPrivate;

    function setUniversityInfo(string memory _name,string memory _city,uint _students,uint _year,bool _private) public {

     universityname=_name;
     city= _city;
     totalStudents= _students;
     foundedyear= _year;
     isPrivate= _private;
    }

}