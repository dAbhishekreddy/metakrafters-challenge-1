// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// here we are defining a smart contract named HospitalManagement.
contract HospitalManagement {
    

 // Define a struct to represent patient information.
    struct Patient {
        uint id;          
        string name;
        //returns boolean value  indicating if the patient is admitted. 
        bool admitted;    
    }
    
    // Created a mapping to store patient data with the patient ID as the key.
    mapping(uint => Patient) public patients;

    //here this is used to  track the total number of patients.
    uint public patientCount;

    //This  function is used  to admit a patient.
    function admitPatient(uint _id, string memory _name) public {
        // require statement: Ensure that the patient is not already admitted.
        require(!patients[_id].admitted, "Patient is already admitted");
        
        // assert statement: Ensure that the patient's name is not empty.
        assert(bytes(_name).length > 0);
        
        // Creates a new Patient object and add it to the mapping.
        patients[_id] = Patient(_id, _name, true);
        
        //It increments the patient count.
        patientCount++;
    }
    
    // This function is used  to discharge a patient.
    function dischargePatient(uint _id) public {
        // require statement checks that the patient is admitted before discharging.
        require(patients[_id].admitted, "Patient is not admitted");
        
        // Mark the patient as discharged.
        patients[_id].admitted = false;
        
        // Decrement the patient count.
        patientCount--;
    }
    
    //This function is used to update a patient's name.
    function updatePatientName(uint _id, string memory _name) public {
        // revert statementis used to revert the transaction if the provided name is empty.
        if (bytes(_name).length == 0) {
            revert("Name cannot be empty");
        }
        patients[_id].name = _name;
    }
}