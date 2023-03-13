// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ExampleContract {
    
    event NewPerson(uint indexed id, string name, uint age);
    
    struct Person {
        uint age;
        string name;
    }
    
    mapping(uint => Person) public people;
    uint public peopleCount;
    
    function addPerson(string memory name, uint age) public {
        
        peopleCount += 1;
        people[peopleCount] = Person(age, name);
        emit NewPerson(peopleCount, name, age);
    }
    
}