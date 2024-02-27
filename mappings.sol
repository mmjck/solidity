// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    mapping (uint => string) public  names;
    mapping (uint => address) public  addresses;
    mapping (address => uint) public  balances;
    mapping (address => bool) public  hasVoted;
    mapping (address => mapping (uint => bool)) public  myMapping;
}