# ContractOfOwner Smart Contract

## Overview

`ContractOfOwner` is a smart contract in Solidity that designates a single admin (the contract deployer) and restricts certain functionalities to this admin.

## Contract Details

### Variables

- `admin`: The address of the contract admin, set to the address that deploys the contract.

### Constructor

The constructor sets the `admin` to the address that deploys the contract.

### Functions

#### `onlyAdmin()`

Ensures that the function caller is the admin using a `require` statement.

#### `isAdminHere()`

Checks if the function caller is the admin using an `if` statement and reverts if not.

#### `Admin()`

Uses an `assert` statement to ensure the caller is the admin.

## Usage

### Deployment

Deploy the `ContractOfOwner` contract. The deploying address will be set as the admin.

### Admin Check Functions

- Use `onlyAdmin` to restrict access to admin-only functionality.
- Use `isAdminHere` to check for admin privileges and revert if the caller is not the admin.
- Use `Admin` to assert admin privileges.

## Security Considerations

- Ensure the admin address is managed securely.
- Functions using `onlyAdmin` and `isAdminHere` should handle admin-specific logic carefully.

## License

This project is licensed under the MIT License.
