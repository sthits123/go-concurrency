// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {PredictionMarket} from "../src/PredictionMarket.sol";

contract CounterTest is Test {
    PredictionMarket public pm;
    address deployer = address(0x1);
    address user1 = address(0x2);

    function setUp() public {
        pm = new PredictionMarket();
        
    }

    function test_CreateMarket() public {
      uint256 cutoff = block.timestamp + 1 days;
      vm.prank(user1);
  
      uint256 marketId = pm.createMarket(user1, "Match123", cutoff);
      assertEq(pm. marketCount(),1);

       
    }

}
