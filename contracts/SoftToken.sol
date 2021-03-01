pragma solidity ^0.5.11;

import "./ERC20Detailed.sol";

contract SoftToken is ERC20Detailed {
    
    uint256 public _releaseTime;
    constructor() public {
        uint256 totalSupply = 200000000 * (10 ** decimals()); 
        _mint(msg.sender,totalSupply);
        _releaseTime = block.timestamp + 365 days;
    }
     /**
     * @dev Burns a specific amount of tokens.
     * @param value The amount of token to be burned.
     */
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }

    /**
     * @dev Burns a specific amount of tokens from the target address and decrements allowance.
     * @param from address The account whose tokens will be burned.
     * @param value uint256 The amount of token to be burned.
     */
    function burnFrom(address from, uint256 value) public {
        _burnFrom(from, value);
    }
    
    
    function updateReleaseTokenTime(uint256 tokenTime) public onlyOwner {
        _releaseTime = tokenTime;
    }
    modifier isTokenReleased () {
        if (isOwner()){
           _;
        }else{
            require(block.timestamp >= _releaseTime);
            _;
        }
    }
    /**
     * @dev Function to mint tokens
     * @param to The address that will receive the minted tokens.
     * @param value The amount of tokens to mint.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address to, uint256 value) public onlyOwner returns (bool) {
        _mint(to, value);
        return true;
    }
    
    function transfer(address _to, uint256 _value)  public isTokenReleased returns (bool)  {
        return super.transfer(_to,_value);
    }

   function transferFrom(address _from, address _to, uint256 _value) public isTokenReleased returns (bool) {
      return super.transferFrom(_from, _to, _value);
    }


   function increaseAllowance(address _spender, uint _addedValue) public isTokenReleased returns (bool) {
      return super.increaseAllowance(_spender, _addedValue);
    }

   function decreaseAllowance(address _spender, uint _subtractedValue) public isTokenReleased returns (bool) {
     return super.decreaseAllowance(_spender, _subtractedValue);
    }
}