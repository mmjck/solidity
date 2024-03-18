// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Payable {
    address payable  public owner;


    constructor() payable {
        owner = payable(msg.sender);
    }


    function deposit() public payable  {}

    function notPayable () public {}

    function withdraw() public {
        uint256 amout = address(this).balance;

        (bool success,) = owner.call{ value: amout}("");
        require(success, "Failed to send Ether");
    }


    function transer(address payable  _to, uint256 _amount) public {
        (bool success,) = owner.call{ value: _amount}("");
        require(success, "Failed to send Ether");

    }
}