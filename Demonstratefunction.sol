// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ExampleContract {
    
    address public owner;
    uint public balance;
    
    constructor() {

        owner = msg.sender;
    }
    
    modifier onlyOwner() {

        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }
    
    function deposit() public payable {

        balance += msg.value;
    }
    
    function withdraw(uint amount) public onlyOwner {
        
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
        payable(msg.sender).transfer(amount);
    }
    
}