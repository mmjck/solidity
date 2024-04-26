// SPDX-License-Identifier: MIT 
pragma solidity >=0.7.3;

contract Message {
    event UpdateMessage(string oldStr, string newStr);

    string public message;


    constructor(string memory _str){
        message = _str;
    }


    function update(string memory _str) public {
        // save old messge
        string memory oldMessage = message;
        
        // update to new str
        message = _str;

        // dispatch event of update
        emit UpdateMessage(oldMessage, message);
    }
}