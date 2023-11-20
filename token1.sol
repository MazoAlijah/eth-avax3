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
