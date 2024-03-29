// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract TwitterStruct {
    struct Tweet {
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }
    
    mapping ( address => Tweet []) public tweets;


    function create(string memory _tweet) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _tweet,
            timestamp: block.timestamp,
            likes: 0
        });
        tweets[msg.sender].push(newTweet);
    }

    function get(address _owner, uint _i) public view returns (Tweet memory) {
        return tweets[_owner][_i];
    }


    function allTwetter(address _owner) public view returns (Tweet[] memory){
        return tweets[_owner];
    }
}