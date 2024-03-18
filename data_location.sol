// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocations {
    uint256[] public arr;
    mapping (uint256 => address) map;

    struct SimpleStruct {
        uint256 foo;   
    }


    mapping (uint256 => SimpleStruct) structs;


    function f() public {
        _f(arr, map, structs[1]);

        SimpleStruct storage s = structs[1];

        SimpleStruct memory s2 = SimpleStruct(0);
    }

    function _f(
        uint256[] storage _arr,
        mapping (uint256 => address) storage _map,
        SimpleStruct storage _struct
    ) internal  {
        // do something
    }


    function g(uint256[] memory _arr) public returns (uint256[] memory){
        // do something
    }


    function h(uint256[] calldata _arr) external {
        // do something
    }
}