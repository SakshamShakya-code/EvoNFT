# EvoNFT
EvoNFT – Short for "Evolving NFT," highlighting dynamic metadata.
# EvoNFT - Dynamic Metadata NFT

EvoNFT is a Solidity-based NFT smart contract that allows dynamic metadata updates. It is designed to be lightweight, requiring no imports or constructors while maintaining essential NFT functionalities.

## Features

- **Dynamic Metadata:** The `updateMetadata` function allows the contract owner to change the metadata URI of minted NFTs.
- **No Constructor:** Uses an `initialize` function to set the contract owner.
- **No Imports:** Built with pure Solidity without external dependencies.
- **No Input Fields:** All key functions are controlled exclusively by the contract owner.

## Deployed Contract Address

EvoNFT is deployed on the **Edu Chain** at:

```
0xF07214450e0a24D23aD525a8803d5C2484751549
```

## Smart Contract Overview

The EvoNFT contract allows the owner to mint NFTs with an initial metadata URI and update it dynamically. Only the owner has permission to modify the metadata of any NFT.

## How It Works

1. **Initialize** - The contract owner is set via the `initialize()` function.
2. **Mint NFTs** - The owner can mint NFTs with a specified metadata URI.
3. **Update Metadata** - The owner can update an NFT’s metadata dynamically.
4. **View Metadata** - Anyone can retrieve the metadata URI of an NFT.

## Usage

### Mint an NFT
```solidity
mint(address to, string memory uri);
```
Mints a new NFT to the specified address with the given metadata URI.

### Update Metadata
```solidity
updateMetadata(uint256 tokenId, string memory newUri);
```
Allows the owner to modify the metadata URI of an existing NFT.

### Fetch NFT Metadata
```solidity
tokenURI(uint256 tokenId);
```
Returns the metadata URI of a specific NFT.

## License

This project is open-source under the MIT License.

