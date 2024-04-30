// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";

import {FundMe} from "../src/FundMe.sol";
import {DeployFunMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test{

    FundMe fundeMe;

    function setup() external {
        // fundeMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        DeployFunMe deployFundMe = new DeployFunMe();
        fundeMe = deployFundMe.run();
    }


    function testMinDollarIsFive() public {
        assertEq(fundeMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public {
        assertEq(fundeMe.i_owner(), msg.sender);
    }
}