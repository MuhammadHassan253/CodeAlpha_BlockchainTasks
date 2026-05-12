// SPDX-License-Identifier: MIT
pragma solidity  0.8.30;
/*contract HospitalManagment{
enum PatientStatus{Waiting, UnderTreatment, Discharged, Critical}

struct Patient{
    string name;
    uint age;
    uint patientId;
    PatientStatus status;
}

mapping (uint => Patient) public H2;

uint[] public  patientIds;

//state variables 
address public doctor;
uint public  totalPatients;

constructor()public {
  doctor= msg.sender;
}

function addPatient(string memory _name, uint _age, uint _id)public {
    H2[_id]= Patient(_name, _age, _id, PatientStatus.Waiting);
    patientIds.push(_id);
    totalPatients++;
    assert(totalPatients== patientIds.length);
}

function  updateStatus(uint id, PatientStatus newStatus)public {
    H2[id].status= newStatus;
}

function getPatient(uint id)public view returns (Patient memory) {
    return H2[id];
}

function getTotalPatient()public view returns(uint ){
    return totalPatients;
}

function getPatientStatus(uint id)public view returns(PatientStatus ){
  return  H2[id].status;
}


}
*/

contract MedicineTracker{

    enum medicinestatus{Manufactured, InStock, Sold, Expired}
 
    struct Medicine{
        string name;
        string manufacturer;
        uint medicineId;
        uint price;
        uint quantity;
        medicinestatus status;

    }

    mapping  (uint => Medicine) public medicine;

    uint [] public  medicineIds;

    uint totalMedicines;
      address  owner;
   
    constructor(){
      
        owner= msg.sender;
    }

    function addMedicine(string memory name,string memory manufacturer, uint id,uint price,uint quantity )public {
       medicine[id] = Medicine(name, manufacturer, id, price, quantity, medicinestatus.Manufactured);
       // medicine[id] = Medicine(name, manufacturer, id, price, quantity, medicinestatus.Manufactured);

        //arraypush
        medicineIds.push(id);
        totalMedicines++;
        
        assert(totalMedicines== medicineIds.length);


    }

    function getMedicine(uint id)public  view  returns (Medicine memory){
        return medicine[id];
    }

    function updateMedicineStatus(uint id,medicinestatus newStatus)public {
        medicine[id].status= newStatus;
      
    }

    function getTotalMedicines()public view  returns(uint){
        return  totalMedicines;
    } 

    function getMedicineStatus(uint id)public view returns(medicinestatus){
        return medicine[id].status;
    } 

}