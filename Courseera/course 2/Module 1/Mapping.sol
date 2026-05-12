// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

/*contract Mapping {

    mapping  (address => uint)public myMap;

    function getAddress(address _addr)public view returns (uint){
        return myMap[_addr];
    }

    function setAddress(address _addrs,uint _J )public {
        myMap[_addrs]= _J;
    }

    function removeAddress(address _addr)public {
        delete myMap[_addr];
    }
}
*/

//ASSIGNMENT BY COURSERA 

/*contract MappingAssignment{
    struct Movie{
        string title;
        string director;
    }

    mapping  (uint =>Movie)public movie;

    function addMovie(uint movie_id, string memory _title,string memory _director)public {
        movie[movie_id]= Movie(_title , _director);

    }
}
*/

/*contract Mapping{

    mapping  (address => uint)public  balance;

    function deposit(uint amount)public {
        balance[msg.sender] +=amount;
    }

    function withdrawl(uint _amount)public {
        balance[msg.sender]  -=_amount; 
    }

    function getMyBalance()public  view returns(uint) 
   {
    return balance[msg.sender];
   }

   function getBalance(address _address)public view returns (uint){
    return balance[_address];
   }


}
*/

/*contract Mapping{
    struct Student{
        string name;
        uint age;
        uint marks;
        bool isRegister;
    }

    mapping  (address =>Student)public  myMap;

    function registerStudents(string memory _name,uint _age, uint _marks)public{
        myMap[msg.sender]= Student(_name,_age,_marks,true);
     
    } 

    function getMyProfile()public view returns (Student memory ){
        return myMap[msg.sender];

    }

    function getStudentProfile(address _address)public view returns (Student memory){
        return  myMap[_address];
    }

    function updateMarks(address _Address, uint newMarks)public {
        myMap[_Address].marks=newMarks;
    }
    function isStudentRegister(address __address)public view returns (bool){
        return  myMap[__address].isRegister;
    }

}
*/

contract Maping{
    mapping  (address=> mapping (uint=> bool))public MyMap;

    mapping  (address =>uint)public  Courses;

    function Enrolled(uint corseId)public {
     MyMap[msg.sender][corseId]= true;
     Courses[msg.sender]++;
    }

    function unenroll(uint courseId)public {
        MyMap[msg.sender][courseId]=false;
        Courses[msg.sender]--;


    }
    function isEnrolled(address _address, uint courseid)public view  returns (bool)
    {
        return MyMap[_address] [courseid];
    }

    function getCourerCount()public view returns(uint){
        return Courses[msg.sender];
    } 
}
