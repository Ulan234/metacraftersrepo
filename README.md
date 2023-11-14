# TokenContract Solidity Smart Contract

This Solidity smart contract, `TokenContract`, represents a basic token with minting and burning capabilities. Users can mint new tokens and burn existing tokens, and the contract maintains individual account balances.

## Smart Contract Details

- **Name:** `TokenContract`
- **Solidity Version:** `^0.8.0`
- **License:** MIT

## Contract Properties

- **`name`**: The name of the token.
- **`symbol`**: The symbol representing the token.
- **`balances`**: A mapping of account addresses to their respective token balances.
- **`totalSupply`**: The total supply of tokens.

## Contract Functions

### `constructor(string memory _name, string memory _symbol)`

- **Description:** Initializes the contract with the specified name and symbol.
- **Parameters:**
  - `_name`: The name of the token.
  - `_symbol`: The symbol representing the token.

### `mint(uint256 amount)`

- **Description:** Allows users to mint new tokens.
- **Parameters:**
  - `amount`: The amount of tokens to mint.
- **Conditions:**
  - Requires the mint amount to be greater than 0.
- **Events:**
  - `Mint`: Triggered upon a successful mint, capturing the account address and the minted amount.

### `burn(uint256 amount)`

- **Description:** Allows users to burn existing tokens.
- **Parameters:**
  - `amount`: The amount of tokens to burn.
- **Conditions:**
  - Requires the account to have sufficient funds for burning.
  - Ensures that the burn amount is less than or equal to 100.
- **Events:**
  - `Burn`: Triggered upon a successful burn, capturing the account address and the burned amount.
