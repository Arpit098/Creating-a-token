// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “_address” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “_address”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "_address" is greater than or equal 
       to the amount that is supposed to be burned.
*/
contract MyToken{
    string public TokenName = "OnePiece";
    string public TokenAbbrv = "OP";
    uint public totalSupply = 0;
    
    mapping( address => uint) balance;
    
    function mint(address _address, uint256 value) public {
        totalSupply += value;
        balance[_address] += value;
    }
    function burn(address _address, uint256 value) public {
        if(value<=totalSupply){
            totalSupply -= value;
             balance[_address] -= value;
        }
        else{
            revert("Value sent exceeds total Supply");
        }
       
    }
}


