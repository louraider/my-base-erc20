# my-base-erc20

ERC20 token smart contract project using OpenZeppelin contracts.

## Description

This repository contains a base ERC20 token implementation using OpenZeppelin's battle-tested smart contract library.

## Installation

Install the dependencies using npm:

```bash
npm install
```

This will install:
- `@openzeppelin/contracts` - OpenZeppelin's secure smart contract library
- `hardhat` - Ethereum development environment
- `@nomicfoundation/hardhat-toolbox` - Hardhat toolbox for testing and deployment

## Project Structure

```
my-base-erc20/
├── contracts/          # Smart contracts directory
│   └── MyToken.sol    # ERC20 token implementation
├── package.json       # Project dependencies
└── README.md          # This file
```

## OpenZeppelin Contracts

This project uses OpenZeppelin Contracts (v5.0.0), which provides:
- Secure, audited implementations of ERC20 and other token standards
- Modular and reusable smart contract components
- Access control, pausable tokens, and more utilities

## Next Steps

1. Add your ERC20 token contract in the `contracts/` directory
2. Configure Hardhat for your network
3. Write tests for your token
4. Deploy to your preferred network

## License

MIT
