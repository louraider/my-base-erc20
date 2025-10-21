// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MyToken
 * @dev ERC20 token implementation using OpenZeppelin contracts
 * @notice This is a placeholder contract ready for customization
 */
contract MyToken is ERC20, Ownable {
    /**
     * @dev Constructor that gives msg.sender all of initial supply
     * @param initialSupply The initial token supply
     */
    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    /**
     * @dev Mint new tokens (only owner can call)
     * @param to Address to receive the tokens
     * @param amount Amount of tokens to mint
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    /**
     * @dev Burn tokens from caller's account
     * @param amount Amount of tokens to burn
     */
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
