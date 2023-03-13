// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArraySearchAndRemove {
    
    uint[] public myArray;

    function searchAndRemove(uint _elementToRemove) public returns(bool) {

        for (uint i = 0; i < myArray.length; i++) {

            if (myArray[i] == _elementToRemove) {

                for (uint j = i; j < myArray.length - 1; j++) {

                    myArray[j] = myArray[j+1];
                }

                myArray.pop();

                return true;
            }
        }
        
        return false;
    }
    
    function getArrayLength() public view returns(uint) {
        return myArray.length;
    }
    
    function addElement(uint _elementToAdd) public {
        myArray.push(_elementToAdd);
    }
}