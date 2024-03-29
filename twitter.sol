// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Twitter {
    mapping ( address => string) public tweets;


    function create(string memory _tweet) public {
        tweets[msg.sender] = _tweet;
    }

    function get(address _owner) public view returns (string memory) {
        return tweets[_owner];
    }
}