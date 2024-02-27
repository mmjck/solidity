// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Transfer {
    function transfer(address payable  _to) public payable  {
        msg.sender;
        (bool sent, ) = _to.call{value: msg.value}("");

        require(sent, "Failed");
    }
}