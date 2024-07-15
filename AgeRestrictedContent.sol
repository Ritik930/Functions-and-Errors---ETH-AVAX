// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract AgeRestrictedContent {
    address public chair; // Address of the chairperson who deployed the contract
    mapping(address => uint8) public ageOfUser; // Mapping to store the age of users
    mapping(address => bool) public hasAccess; // Mapping to track whether each address has access

    // Events to log important contract actions
    event AgeRegistered(address indexed user, uint8 age);
    event AccessGranted(address indexed user);
    event AccessDenied(address indexed user);

    // Constructor to set the chairperson's address
    constructor() {
        chair = msg.sender;
    }

    // Function for users to register their age
    function registerAge(uint8 age) public {
        require(age > 0, "Age must be greater than 0");
        ageOfUser[msg.sender] = age;
        emit AgeRegistered(msg.sender, age);
    }

    // Function to check if a user has access to adult content
    function checkAccess() public {
        require(ageOfUser[msg.sender] >= 18, "You must be at least 18 years old to access this content"); // Check if the user is at least 18 years old
        hasAccess[msg.sender] = true;
        emit AccessGranted(msg.sender); // Emit event that access has been granted
    }

    // Function to deny access to users under 18 years old
    function denyAccess() public {
        require(ageOfUser[msg.sender] < 18, "Access granted");
        hasAccess[msg.sender] = false;
        emit AccessDenied(msg.sender); // Emit event that access has been denied
    }

    // Function demonstrating the assert statement
    function assertExample() public view returns (bool) {
        assert(ageOfUser[msg.sender] >= 18 || !hasAccess[msg.sender]); // Assert condition for contract state
        return true;
    }

    // Function demonstrating the revert statement
    function revertExample() public view {
        if (msg.sender != chair) {
            revert("Unauthorized access"); // Revert with custom error message if not chairperson
        }
    }
}