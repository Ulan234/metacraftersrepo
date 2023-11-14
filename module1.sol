// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenContract {
    string public name;
    string public symbol;
    mapping(address => uint256) public balances;
    uint256 public totalSupply;

    event Mint(address indexed account, uint256 amount);
    event Burn(address indexed account, uint256 amount);

    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;
    }

    function mint(uint256 amount) public {
        require(amount > 0, "Mint amount must be greater than 0");
        assert(totalSupply + amount >= totalSupply); 
        balances[msg.sender] += amount;
        totalSupply += amount;
        emit Mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient funds for burning");
        if (amount > 100) {
            revert("Burn amount too high");
        }
        balances[msg.sender] -= amount;
        totalSupply -= amount;
        emit Burn(msg.sender, amount);
    }
}
