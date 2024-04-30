// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {FundMe} from "../src/FundMe.sol";
import {Script} from "forge-std/Script.sol";

contract DeployFunMe is Script{

    FundMe fundMe;
    function run() external{
        vm.startBroadcast();
        fundMe = new FundMe();
        vm.stopBroadcast();
    }
}