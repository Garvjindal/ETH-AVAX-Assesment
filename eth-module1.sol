// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ContractOfOwner {
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    function onlyAdmin() public view {
        require(msg.sender == admin, "Only the admin can call this function.");
    }

    function isAdminHere() public view {
        if(msg.sender != admin){
            revert("The caller is not the admin.");
        }
    }

    function Admin() public view {
        assert(msg.sender == admin);
    }
}
