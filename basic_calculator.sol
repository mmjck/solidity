// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicCalculator {
    uint256 public result;

    function add(uint256 a, uint256 b) internal  {
        result = a + b; 
    }


    function sub(uint256 a, uint256 b) internal  {
        result = a - b; 
    }
}

contract AdvancedCalculator is BasicCalculator {
    function mult(uint256 a, uint256 b) internal  {
        result = a * b; 
    }

    function div(uint256 a, uint256 b) internal  {
        result = a / b; 
    }
    function performanOperation(uint256 a, uint256 b, uint256 operation) public {
        if(operation == 0) add(a, b); 
        else if (operation == 1) sub(a, b);
        else if (operation == 2) mult(a, b);
        else if (operation == 3) div(a, b);
        else revert("Invalid operatior");
    }
}