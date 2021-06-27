// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/presets/ERC20PresetMinterPauser.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
* @dev Creates an ERC20 token that will be used for distributing DAIx to
* holders.
* Uses presets from @OpenZeppelin so mint function can be called externally.
* Does not implement a supply cap
*/
contract 1_divToken is ERC20PresetMinterPauser.sol {
  ERC20PresetMinterPauser _token;

  constructor(string _name, string _symbol) {
  }
}
