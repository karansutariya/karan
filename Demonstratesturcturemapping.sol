// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    
    struct Person {
        uint age;
        string name;
    }
    
    mapping(address => Person) public people;
    
    function addPerson(uint age, string memory name) public {

        Person memory newPerson = Person(age, name);
        people[msg.sender] = newPerson;
    }
    
    function getPerson() public view returns (uint, string memory) {
        
        Person storage person = people[msg.sender];
        return (person.age, person.name);
    }
    
}
