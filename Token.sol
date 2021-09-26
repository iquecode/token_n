// SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

import "https://github.com/iquecode/token_n/blob/main/lib/BEP20Token.sol";

contract CustomToken is  BEP20Token {

    constructor() {
    _name = "Test";
    _symbol = "TTT";
    _decimals = 6;
    _totalSupply = 300000 * 10 ** 6;
    _balances[msg.sender] = _totalSupply;

    emit Transfer(address(0), msg.sender, _totalSupply);
  }

}