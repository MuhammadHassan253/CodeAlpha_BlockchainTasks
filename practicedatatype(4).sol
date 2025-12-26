// SPDX-License-Identifier: MIT
pragma solidity 0.8;

contract Studentrecord{

    string public schoolName;
    bool public isopen;
    uint public totalStudent;

    struct Student{
        string name;
        uint rollNumber;
        bool passed;
    }


    Student[] public student;

    constructor(string memory _schoolname){
        schoolNamE=_schoolname;
        isopen= true;
        totalStudent=0;

    }

    function AddStudent(string memory _studentname,uint _rollnumber, bool _passed)public{
        Student memory newstudent=Student(_studentname, _rollnumber, _passed);
        student.push(newstudent);
        totalStudent +=1;
    } 
    function getStudent(uint _index)public view returns (string memory, uint ,bool) {
        Student memory s=student[_index];
        return (s.name, s.rollNumber,s.passed);


    }
}