// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;

/*contract  Movie{
    struct Movie{
        string title;
        string director;
        uint movie_id;
    }

    Movie newMovie;
    Movie comedy;

    function setMovie()public {
        newMovie=Movie('Stock Market','Hassan jan', 3);
    }
  

   function getMovieID()public  view returns(uint){
    return  newMovie. movie_id;
   } 

     function comedyMovie()public {
        comedy=Movie('trading in the zone', 'gul khan', 33);
    }

    function getComedyID()public  view returns(uint){
    return  comedy.movie_id;
   } 


}
*/

contract EmployeeManagment{

    struct Employee{
        string name;
        uint  age;
        uint salary;
        bool isActive;

    }

    Employee[] public  employees;
    function addEmployee(string memory _name, uint _age,uint _salary)public {

        employees.push(Employee(_name, _age, _salary, true));
    }

    function removeEmployee(uint index)public {
        employees[index]= employees[employees.length-1];
        employees.pop();

        
    }

    function getEmployee()public  view returns(Employee [] memory) {
        return employees;
    }

    function updateSalary(uint _index, uint _newSalary)public{
        employees[_index].salary = _newSalary;
    } 

    function deactivateEmployee(uint Index)public {
        employees[Index].isActive= false; 
    }

    function getTotalEmployee()public view returns (uint ){
        return  employees.length;
    }




}