pragma solidity ^0.8.0;
contract mappings{
    struct studentDetails{
        string name;
        uint age;
        uint std;
        uint contact;
    }
    mapping(uint => studentDetails)_student;
    function set(string memory name,uint age,uint std,uint contact,uint rollno)public{
        _student[rollno] = studentDetails(name,age,std,contact);
    }
    function get(uint rollno)public view returns(string memory name,uint age,uint std,uint contact){
        return (_student[rollno].name,_student[rollno].age,_student[rollno].std,_student[rollno].contact);
    }
}