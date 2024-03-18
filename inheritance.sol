// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract A{
    function foo() public pure virtual returns (string memory){
        return  "A";
    }
}

contract C is A {
    function foo() override public pure virtual returns (string memory) {
        return "B";
    }
}

contract B is A {
    function foo() override public pure virtual returns (string memory) {
        return "B";
    }
}

contract D is B, C {
    function foo() override(B, C) public pure virtual returns (string memory) {
        return super.foo();
    }
}