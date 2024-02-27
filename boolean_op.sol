// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BooleanOp {
    function eq(uint a, uint b) external pure returns (bool){
        return a == b;
    }

    function notEq(uint a, uint b) external pure returns (bool){
        return a != b;
    }


    function gt(uint a, uint b) external pure returns (bool){
        return a > b;
    }

    function lt(uint a, uint b) external pure returns (bool){
        return a < b;
    }

    function comparisonExample() external pure returns (bool){
        return (1 + 1 == 2) && (2 + 2 == 4);
    }
}