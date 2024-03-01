// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract TwitterArray {
    mapping ( address => string []) public tweets;


    function create(string memory _tweet) public {
        tweets[msg.sender].push(_tweet);
    }

    function get(address _owner, uint _i) public view returns (string memory) {
        return tweets[_owner][_i];
    }


    function allTwetter(address _owner) public view returns (string[] memory){
        return tweets[_owner];
    }
}