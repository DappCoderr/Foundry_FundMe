// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test,console} from "forge-std/Test.sol";

import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test{

    FundMe fundeMe;

    function setup() external {
        fundeMe = new FundMe();
    }

    // function testDemo() public {}

    // function testMinDollarIsFive() public {
    //     assertEq(fundeMe.MINIMUM_USD(), 10e18);
    // }

    function testOwnerIsMsgSender() public {
        console.log(msg.sender);
        console.log(fundeMe.i_owner());
        console.log(address(this));
        assertEq(fundeMe.i_owner(), address(this));
    }
}