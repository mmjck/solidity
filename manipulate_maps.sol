// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Mappings {
    mapping (uint => string) public names;

    function get(uint _id) public view returns (string memory){
        return names[_id];
    }

    function set(uint _id, string memory _value) public  {
        names[_id] = _value;
    }
    function remove(uint _id) public {
        delete names[_id];
    }
 
}