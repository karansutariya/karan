pragma solidity ^0.8.0;

contract StudentsMarks {

    mapping(string => uint256) StudentsMarks;

    function addmark (string memory_name, uint256_mark) public {
        StudentsMarks[_name] = _mark;
    }

    function getmark(string memory_name) public view returns (uint256) {

        returns StudentsMarks[_name];
    }
}