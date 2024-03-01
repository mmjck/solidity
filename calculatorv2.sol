// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Calculator {
    uint256 result = 0;

    function add(uint256 value) public {
        result += value; 
    }


    function sub(uint256 value) public {
        result -= value; 
    }


    function mult(uint256 value) public {
        result *= value; 
    }


    function get()public view returns(uint256){
        return result;
    }
}