// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
        function transferForm(address _from, address _to, uint256 _value) external  returns (bool success);
}

contract MyContract {
   
    function deposit(address _tokenAddress, uint _amount) public {
        IERC20(_tokenAddress).transferForm(msg.sender, address(this), _amount);
    }
    
}   