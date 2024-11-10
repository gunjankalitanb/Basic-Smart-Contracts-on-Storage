# Solidity Smart Contract Suite

![Solidity](https://img.shields.io/badge/Solidity-^0.8.18-blue)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

This repository contains a suite of Solidity smart contracts showcasing fundamental concepts such as inheritance, mappings, and contract interactions. The contracts include a simple storage model, a factory contract to deploy multiple storage contracts, and an enhanced storage contract with modified functionality.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Installation](#installation)
- [Contracts](#contracts)
  - [SimpleStorage](#simplestorage)
  - [StorageFactory](#storagefactory)
  - [AddFiveStorage](#addfivestorage)
- [Usage](#usage)
- [License](#license)

## Overview

This project demonstrates the use of Solidity for creating decentralized applications. It includes:
- A basic storage contract (`SimpleStorage`)
- A factory contract for creating instances of the storage contract (`StorageFactory`)
- An extended storage contract that overrides functionality to add custom behavior (`AddFiveStorage`)

Each contract illustrates Solidity basics such as data structures (arrays, mappings), inheritance, and interaction between contracts.

## Features

- **Simple Storage and Retrieval**: Store and retrieve numbers with `SimpleStorage`.
- **Factory Pattern**: Use `StorageFactory` to create and interact with multiple `SimpleStorage` instances.
- **Inheritance and Customization**: Extend functionality in `AddFiveStorage` to add 5 to each stored value.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/your-repo-name.git
    cd your-repo-name
    ```

2. Open and compile the project in your preferred Solidity development environment (e.g., [Remix](https://remix.ethereum.org/) or [Hardhat](https://hardhat.org/)).

## Contracts

### 1. SimpleStorage.sol

A basic smart contract to store and retrieve a favorite number.

#### Code Summary
```solidity
uint256 myfavoriteNumber;
struct Person { uint256 favoriteNumber; string name; }
Person[] public listOfPeople;
mapping(string => uint256) public nameToFavouriteNumber;
