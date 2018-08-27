pragma solidity 0.4.24;

import 'zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol';

contract SpaceChain is BurnableToken {
    string public name = "SpaceChain";
    string public symbol = "SPC";
    uint8 public decimals = 18;
	uint256 public INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

	constructor() public {
		totalSupply_ = INITIAL_SUPPLY;
		balances[msg.sender] = INITIAL_SUPPLY;
	}

}
