// SPDX-License-Identifier: MIT

// 1. Deploy mocks when we are on a local anvil chain
// 2. Keep track of contracts address across different chains


pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";

contract HelperConfig {

    NetworkConfig public activeNetworkConfig;

    struct NetworkConfig {
        address priceFeed; // ETH/USD price feed address
    }

    constructor {
        if(block.chainid == 11155111){
            activeNetworkConfig = getSepoliaEthConfig();
        } else{
            activeNetworkConfig = getAnvilEthConfig();
        }
    }

    function  getSepoliaEthConfig() public pure returns(NetworkConfig memory) {
        NetworkConfig memory sepoliaConfig = NetworkConfig({priceFeed : 0x694AA1769357215DE4FAC081bf1f309aDC325306});
        return sepoliaConfig;
    }

    function getAnvilEthConfig() public pure {

    }
}