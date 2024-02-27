// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SecrectVault {
    string private secret;

    constructor(string memory _secret){
        secret =  _secret;
    }

    function setSecrect(string memory _secret) public {
        secret =  _secret;
    }

    function getSecret() public  view returns (string memory){
        return secret;
    }
}



contract MyContract {
    SecrectVault public secrectVault;
    
    constructor(SecrectVault _secrectVault){
        secrectVault = _secrectVault;
    }

    function setSecret(string memory _secret) public {
        secrectVault.setSecrect(_secret);
    }

    function getSecret() public  view returns (string memory){
        return secrectVault.getSecret();
    }

}