# Project Title

ETH-Avax module 3

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has 3 functions a mint function, a burn function and a transfer function using erc tokens. 

## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

* To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token1.sol). Copy and paste the following code into the file:
```javascript
// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/access/Ownable.sol";

contract token1 is ERC20, Ownable {
    constructor() ERC20("token1", "to") {
         
        _mint(msg.sender, 100 * (10 ** uint256(decimals())));
    }

    function mint(address to, uint256 amount) public onlyOwner {
        
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        
        _transfer(msg.sender, to, amount);
        return true;
    }
}
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile token1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "token" contract from the dropdown menu, and then click on the "Deploy" button.

 Once the contract is deployed you can interact with the functions beside the compiler including the mint function, the burn fucntion and the transfer functions.
    

## Authors

Contributors names and contact info

Alijah Ethan Mazo  
