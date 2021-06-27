// contracts/vaultDiv.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "1_divToken.sol";

/**
* @dev Contract for minting tokens.
* Allows deployer to mint a single token and pass it to an address.
* Stores all token holders in an array.
*/
contract 2_vaultDiv is 1_divToken.sol {

    // @dev array for holding addresses of token holders
    address[] internal holders;



    /*
    * @dev mints a GDIV token and sends it to specified address.
    * Using the ERC20 Preset from OpenZeppelin ensures that only
    * the contract deployer is able to use this function.
    */
    function mintDivToken(address memory _receiver, uint _amount) public {
        if (balanceOf(_receiver) == 0) {
          holders.push(_receiver);
        }
        mint(_receiver, _amount);
        //holders.push(_receiver);
    }


  }
}
