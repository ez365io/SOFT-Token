# SOFT 

SOFT is a digital ecosystem that combines the best aspects of online gaming, cryptocurrency trading and blockchain education.  The SOFT experience is simple, user friendly and fun, so you can easily play, trade and learn with digital assets.

Please note that this repository is under development. The code here will be under continual audit and improved until release of the completed system.

# SOFT Smart Contracts

* `contracts/` contains smart contract code to be deployed.
* `contracts/ERC20.sol` Standard ERC20 token.
* `contracts/ERC20Detailed.sol` defining token metdata like name , symbol and decimals.
* `contracts/SoftToken.sol`  defining token main contract and minting total supply to owner address.
* `contracts/IERC20.sol` interface for all functions of ERC20.
* `contracts/Ownable.sol` a contract with an owner.
* `contracts/SafeMath.sol` a library to handle all basic math operations like sum, divide or multiply, with built-in safety checking.
* `tests/` test cases.

# SetUp & Run Unit Tests

## Setup 
```
Step#1: Install npm
https://www.npmjs.com/get-npm
npm install npm@latest -g

Step#2: Install truffle:
http://truffleframework.com/
npm install -g truffle

Step#3: Install testRpc
https://github.com/trufflesuite/ganache-cli
npm install -g ganache-cli

Step#4: Install external package chai:
https://www.npmjs.com/package/chai
npm install chai

Step#5: Install external package chai-as-promised:
https://www.npmjs.com/package/chai-as-promised
npm install chai-as-promised
```
## Run

```
Step#1: Navigate to root folder
Step#2: Run 'testrpc' or 'ganache-cli' from console
Step#3: Open another console and from root folder run 'truffle test'
```

## Result

```
$ truffle test
Compiling ./contracts/ERC20.sol...
Compiling ./contracts/ERC20Detailed.sol...
Compiling ./contracts/SoftToken.sol...
Compiling ./contracts/IERC20.sol...
Compiling ./contracts/Ownable.sol...
Compiling ./contracts/ERC20Basic.sol...
Compiling ./contracts/Migrations.sol...
Compiling ./contracts/Ownable.sol...
Compiling ./contracts/SafeMath.sol...

  Contract: Token contract
    Check SC instance
tokenContract = 0x48a95B221EeBe216642A6439658374691DCca673
      ✓ catch an instance of tokenContract
totalSupply = 2e+26
      ✓ Saving totalSupply
    Check initial parameters
Token name = SOFTcoin
      ✓ Check Token name
Token Symbol = SOFT
      ✓ Check Token Symbol
Token decimals = 18
      ✓ check Token Decimals
    Get tokenHolders addresses
owner = 0x8eD5e10E007E1BE8801C58D7af7A74F054Fca8E7
      ✓ check owner address
    Check initial balances
2e+26
      ✓ check owner possibility to transfer tokens
  8 passing (230ms)
```


