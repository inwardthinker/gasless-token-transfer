// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {GaslessTokenTransfer} from "../src/app/GaslessTokenTransfer.sol";

contract GaslessTokenTransferScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new GaslessTokenTransfer();
        vm.stopBroadcast();
    }
}
