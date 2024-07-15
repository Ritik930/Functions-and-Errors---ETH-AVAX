# Functions-and-Errors---ETH-AVAX
# AgeRestrictedContent Smart Contract

This Solidity smart contract enforces age restrictions for accessing adult content on the Ethereum blockchain. Users can register their age, and the contract will grant or deny access based on whether the user is at least 18 years old. Only the chairperson (deployer) has certain administrative privileges.

## Contract Details

**SPDX-License-Identifier:** UNLICENSED  
**Solidity Version:** ^0.8.0

### State Variables

- `chair`: Address of the chairperson who deployed the contract.
- `ageOfUser`: Mapping to store the age of users.
- `hasAccess`: Mapping to track whether each address has access to restricted content.

### Events

- `AgeRegistered`: Emitted when a user registers their age.
- `AccessGranted`: Emitted when access to restricted content is granted.
- `AccessDenied`: Emitted when access to restricted content is denied.

### Functions

- `constructor()`: Sets the chairperson to the address of the contract deployer.
- `registerAge(uint8 age)`: Allows users to register their age. Emits `AgeRegistered` event.
- `checkAccess()`: Checks if a user is at least 18 years old and grants access. Emits `AccessGranted` event.
- `denyAccess()`: Denies access to users under 18 years old. Emits `AccessDenied` event.
- `assertExample()`: Demonstrates the use of the `assert` statement to validate contract state.
- `revertExample()`: Demonstrates the use of the `revert` statement with a custom error message for unauthorized access attempts.

## Getting Started

### Prerequisites

- Access to an Ethereum development environment (e.g., Remix IDE).

### Deploying the Contract

#### Compile the Contract:

1. Copy the contract code into your Solidity IDE (e.g., Remix).
2. Ensure the Solidity compiler version is set to ^0.8.0.
3. Compile the contract.

#### Deploy the Contract:

1. Go to the "Deploy & Run Transactions" tab.
2. Click on the "Deploy" button to deploy the contract.

### Interacting with the Contract

#### Register Age:

- Call the `registerAge(uint8 age)` function to register your age. Ensure the age is greater than 0.

#### Check Access:

- Call the `checkAccess()` function to verify if you are at least 18 years old and gain access.

#### Deny Access:

- Call the `denyAccess()` function if you are under 18 years old to deny access.

#### Assert and Revert Examples:

- Use `assertExample()` to validate contract conditions.
- Use `revertExample()` to handle unauthorized access attempts.

## Authors

- Ritik Kumar (https://www.linkedin.com/in/ritik-kumar-8376ba225/)

## License

This project is licensed under the MIT License - see the LICENSE file for details.

