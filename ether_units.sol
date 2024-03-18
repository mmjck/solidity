// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


contract EtherUnits {
    uint256 public onWei = 1 wei;

    bool public isOneWei = 1 wei == 1;



    uint256 public oneEther = 1 ether;

    bool public isOneEther = 1 ether == 1e18;


    function isOneEtherFucc() public  view  returns (bool){
        return isOneEther;
    } 

    function isOneWeiFunc() public  view  returns (bool){
        return isOneEther;
    } 
}