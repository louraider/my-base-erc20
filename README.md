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
├── scripts/           # Deployment scripts
│   └── deploy.js      # Deployment script for MyToken
├── package.json       # Project dependencies
└── README.md          # This file
```

## OpenZeppelin Contracts

This project uses OpenZeppelin Contracts (v5.0.0), which provides:
- Secure, audited implementations of ERC20 and other token standards
- Modular and reusable smart contract components
- Access control, pausable tokens, and more utilities

## Deployment

### Prerequisites

1. Configure your Hardhat network settings in `hardhat.config.js`
2. Set up your environment variables (never commit private keys to the repository)
3. Ensure you have sufficient funds in your deployer account for gas fees

### Deploy to Local Network

To deploy to a local Hardhat network:

```bash
npx hardhat run scripts/deploy.js
```

### Deploy to Testnet or Mainnet

To deploy to a specific network (e.g., Sepolia testnet):

```bash
npx hardhat run scripts/deploy.js --network sepolia
```

**Important Security Notes:**
- Never commit private keys or mnemonic phrases to the repository
- Use environment variables (e.g., `.env` file with `dotenv` package) to manage sensitive data
- Add `.env` to your `.gitignore` file
- Consider using hardware wallets or secure key management solutions for mainnet deployments

### Example Environment Variables

Create a `.env` file in your project root (never commit this file):

```
PRIVATE_KEY=your_private_key_here
INFURA_API_KEY=your_infura_api_key_here
ETHERSCAN_API_KEY=your_etherscan_api_key_here
```

Then update your `hardhat.config.js` to use these variables:

```javascript
require('dotenv').config();

module.exports = {
  solidity: "0.8.20",
  networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/${process.env.INFURA_API_KEY}`,
      accounts: [process.env.PRIVATE_KEY]
    }
  }
};
```

## Next Steps

1. Customize your ERC20 token in the `contracts/` directory
2. Configure Hardhat for your target network
3. Write tests for your token
4. Deploy using the provided deployment script
5. Verify your contract on block explorers (e.g., Etherscan)

## License

MIT
