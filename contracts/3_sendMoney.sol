// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "2_vaultDiv.sol";
import "@superfluid-finance/ethereum-contracts/contracts/interface/agreements/IInstantDistributionAgreementV1.sol";

/*
* @dev Contract that will stream DAIx to holders of GDIV
*/
contract 3_sendMoney is 2_vaultDiv.sol, IInstantDistributionAgreementV1.sol {

  IERC777 private IERC777interface;

  event deposit(uint256 amount);

  address internal _daix = 0x1305F6B6Df9Dc47159D12Eb7aC2804d4A33173c2; //address for daix
  uint256 internal _maxInt = 2**256 - 1;

  struct holder {
    address _holderAddress;
    uint256 _balance;
  }


  /* @dev Function for depositing DAIx into the contract.
  * Access is set to onlyOwner to ensure that random people don't
  * deposit their own tokens by mistake.
  */
  function depositDAIx(address this, uint256 _amount) external payable onlyOwner {
    require(msg.sender == address(_daix), "DAIx only!");
    ISuperToken.transfer(this, _amount);

    emit deposit(_amount);
  }

  function createIndex()

  function getHolderAmounts() internal view returns(holder[] memory){
    holder[] memory tokenHolders = new holder[](_holderAddress, _balance)
    uint counter = 0;
    for (uint i = 0; i < holders.length; i++) {
      uint _holderBalance =  balanceOf(holders[i]);
      address _tokenHolder = holders[i];
      tokenHolders.push(_tokenHolder, _holderBalance);
    }
    return tokenHolders;
  }

  function pushDAIx() {

  }

  }
}
