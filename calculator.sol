// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contract MyContract {
//     string public myString = "My string";
//     bool public boolean1 = true;
//     uint public myUint = 1;
//     int public myInt = 1;

//     address public myAddress = 0x52bc44d5378309EE2abF1539BF71dE1b7d7bE3b5;
// }

// contract MyContract {
//     string name = "Example";

//     function setName(string memory _name) public {
//         name = _name;
//     }

//     function getName() public view returns (string memory){
//         return name;
//     }

//     function resetNameInternal() internal{
//         name = "Example1";
//     }

//     function resetNamePublic() public {
//         name = "Example1";
//     }
// }


contract MyContract {
   string name1 = "name1";
   string private name2 = "name2";
   string internal name3 = "name3";
   string public name4 = "name4";

}