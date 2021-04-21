pragma solidity ^0.5.0;

import "./Token.sol";

contract EthSwap {
    // name is a state variable, stored on blockchain
    string public name = "EthSwap Instant Exchange";
    Token public token;
    uint256 public rate = 100;

    // tell this contract where...
    // we need the code and the addresss
    constructor(Token _token) public {
        token = _token;
    }

    // msg is global variable inside of sol
    // person calling function is sending ETH to buy tokens
    // payable = key word to send eth
    function buyTokens() public payable {
        // Calculate the number of tokens to buy
        // Redemption rate = # of tokens they receive for 1 ETH
        // Amount of EHT * redemption rate
        uint256 tokenAmount = msg.value * rate; // tell us how much ether sent when fn called
        token.transfer(msg.sender, tokenAmount);
    }
}
// WED MAKEUP - 1:17:34
