// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errors {
    event Log(string message);

    function example1(uint _value) public {
        require(_value > 10, "must be greater than 10");
        emit Log("sucess");
    }


    function example2(uint _value) public {
        
        if(_value <= 0){
            revert("must be greater than 10");
        }
        emit Log("sucess");
    }
}