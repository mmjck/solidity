// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Operators {
    function add(uint a, uint b) external pure returns (uint){
        return a + b;
    }

    function sub(uint a, uint b) external pure returns (uint){
        return a - b;
    }

    function mul(uint a, uint b) external pure returns (uint){
        return a * b;
    }

    function div(uint a, uint b) external pure returns (uint){
        return a / b;
    }

    function exp(uint a, uint b) external pure returns (uint){
        return a ** b;
    }

    function inc(uint a) external pure returns (uint){
        a++;
        return a;
    }

    function dec(uint a) external pure returns (uint){
        a--;
        return a;
    }

    function mathExample() external pure returns (uint){
        uint a;
        a = a + 1;
        a ++;
        a = a * 2;
        a = a ** 2;
        a = a / 2;
        a = a - 1;
        a --;
        return a;


    }
}