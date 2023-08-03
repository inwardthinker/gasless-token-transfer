// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {ERC20Permit} from "../src/ERC20Permit.sol";

contract ERC20PermitScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new ERC20Permit("test", "test", 18);
        vm.stopBroadcast();
    }
}
