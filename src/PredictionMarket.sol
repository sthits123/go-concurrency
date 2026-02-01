// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract PredictionMarket {
    uint256 public marketCount;
    enum Status {Open,Closed,Resolved}
    enum Outcome {None,TeamA,TeamB}

    struct Market{
      uint256 market_id;
      address creator;
      string event_name;
      uint256 cutoff;
      Status status;
      Outcome result;
      uint256 totalTeamABets ;
      uint256 totalTeamBBets ;
    }

   mapping(uint256=>Market) public markets;

   function createMarket(address creator, string memory name, uint256 cutoff) public returns (uint256) {
      uint256 market_id = marketCount;

      markets[market_id] = Market({
        market_id: market_id,
        creator: creator,
        event_name: name,
        cutoff: cutoff,
        status: Status.Open,
        result: Outcome.None,
        totalTeamABets: 0,
        totalTeamBBets: 0
    });

      marketCount++;
      return market_id;
    }

}
