# Metakrafters-challenge-1

# HospitalManagement
This is a simple example in which we made a  smart contract called Hospital Management that maintains a mapping of patients and their admission status.                         
## Requirements 
Firstly construct an object having properties as follows:                                                                                                                        
<pre>
  1)"ID": It is an unsigned integer data type that represents the patient id.
  2)"Name": It is a string data type that represents the patient's name.
  3)"admitted": It is a boolean data type that tells patient is admitted or not.
</pre>

## Mapping
The Hospital Managemnet contract has a mapping of uint to Patient:
   - `patientCount`: A mapping that adds the number of patients.


### Executing program

The contract includes three functions: admitPatient(), dischargePatient(), and updatePatientName(), which showcase the usage of require(), assert(), and revert() statements, respectively.

`1)The admitPatient() function:` <br>It is used to admit a patient by providing their ID and name. The require() statement ensures that the patient is not already admitted. Additionally, the assert() statement verifies that the name provided is not empty.

`2)The dischargePatient() function:`<br> It is responsible for discharging a patient based on their ID. The require() statement verifies that the patient is currently admitted.

`3)The updatePatientName() function:`<br> It allows for updating a patient's name. The revert() statement is utilized to prevent an empty name from being assigned to a patient.

These statements help enforce various conditions and constraints within the hospital management contract, ensuring data consistency, and preventing invalid state changes.
