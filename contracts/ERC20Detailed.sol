pragma solidity ^0.5.0;

import "./ERC20.sol";

/**
 * @title ERC20Detailed token
 * @dev The decimals are only for visualization purposes.
 * All the operations are done using the smallest and indivisible token unit,
 * just as on Ethereum all the operations are done in wei.
 */
contract ERC20Detailed is ERC20 {
    string constant private _name = "SOFTcoin";
    string constant private _symbol = "SOFT";
    uint256 constant private _decimals = 18;


    /**
     * @return the name of the token.
     */
    function name() public pure returns (string memory) {
        return _name;
    }

    /**
     * @return the symbol of the token.
     */
    function symbol() public pure returns (string memory) {
        return _symbol;
    }

    /**
     * @return the number of decimals of the token.
     */
    function decimals() public pure returns (uint256) {
        return _decimals;
    }
}