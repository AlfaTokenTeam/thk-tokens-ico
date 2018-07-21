pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract THKTokens is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function THKTokens(address _owner)  UpgradeableToken(_owner) {
    name = "THKTokens";
    symbol = "THJK";
    totalSupply = 25000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}