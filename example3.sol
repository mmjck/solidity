// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example3 {
    address private owner;
    string public name = "";

    modifier onlyOwner {
        require(msg.sender == owner, "called must be owner");
        _;
    }


    function setName(string memory _name) onlyOwner public {
        name = _name;
    }
}
