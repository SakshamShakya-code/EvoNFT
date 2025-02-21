// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicNFT {
    address public owner;
    uint256 public totalSupply;
    mapping(uint256 => address) public owners;
    mapping(uint256 => string) private tokenURIs;

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function initialize() public {
        require(owner == address(0), "Already initialized");
        owner = msg.sender;
    }

    function mint(address to, string memory uri) public onlyOwner {
        totalSupply++;
        owners[totalSupply] = to;
        tokenURIs[totalSupply] = uri;
    }

    function updateMetadata(uint256 tokenId, string memory newUri) public onlyOwner {
        require(owners[tokenId] != address(0), "Token does not exist");
        tokenURIs[tokenId] = newUri;
    }

    function tokenURI(uint256 tokenId) public view returns (string memory) {
        require(owners[tokenId] != address(0), "Token does not exist");
        return tokenURIs[tokenId];
    }
}
