// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {PredictionMarket} from "../src/PredictionMarket.sol";

contract CounterScript is Script {
    PredictionMarket public pm;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        pm = new PredictionMarket();

        vm.stopBroadcast();
    }
}
