# Creating-a-token
This is a Solidity smart contract that implements a basic token system. The contract allows for minting (creating) and burning (destroying) tokens. Below are the details of the contract and its functions.

Requirements
The contract has public variables that store the details about the coin, including the token name, token abbreviation, and total supply.
The contract uses a mapping of addresses to balances to keep track of token balances for each address.
The contract has a mint function that takes two parameters: an address and a value. This function increases the total supply by the specified value and increases the balance of the sender's address by the same amount.
The contract has a burn function that works in the opposite way of the mint function. It takes an address and a value as parameters and deducts the value from the total supply and the balance of the sender's address.
The burn function includes conditionals to ensure that the balance of the sender is greater than or equal to the amount intended to be burned.
Contract Details
The MyToken contract implements the requirements mentioned above. Here are the details of the contract:

Public Variables
tokenName: A public string variable that represents the name of the token.
tokenAbbrv: A public string variable that represents the abbreviation of the token.
totalSupply: A public uint variable that represents the total supply of the token.
Mapping Variable
balances: A mapping variable that maps addresses to their token balances. It stores the balance of each address as a uint value.
Mint Function
mint(address _address, uint _value): A public function used to mint new tokens. It takes an address (_address) and a value (_value) as parameters. This function increases the total supply by the specified value and increases the balance of the sender's address (_address) by the same amount.
Burn Function
burn(address _address, uint _value): A public function used to burn existing tokens. It takes an address (_address) and a value (_value) as parameters. This function deducts the specified value from the total supply and from the balance of the sender's address (_address) if the sender has sufficient balance.
Note: The burn function includes a conditional check to ensure that the balance of the sender is greater than or equal to the amount intended to be burned.

Deployment
Deploy it in Remix-IDE and use the above functions, it will work properly.
License
This code is licensed under the MIT License. SPDX-License-Identifier: MIT
