pragma solidity ^0.5.0;

import "./Token.sol"

contract EthSwap {
  // name is a state variable
    string public name = "EthSwap Instant Exchange";
    Token public token;

    // tell this contract where...
    // we need the code and the addresss
    constructor(Token _token) public {
      token = _token


}}
