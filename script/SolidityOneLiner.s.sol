// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract SolidityOneLiner is Script {
    function setUp() public {}

    function run() public {
        console2.log(#ONELINER#);
    }
}
