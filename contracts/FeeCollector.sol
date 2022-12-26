pragma solidity ^0.8.14;
// SPDX-License-Identifier: MIT

contract FeeCollector { // 
    address public owner;
    uint256 public balance;
    
    constructor() {
        owner = msg.sender; // store information who deployed contract
    }
    
    // receive WEI
    receive() payable external {
        balance += msg.value; // keep track of balance (in WEI)
    }
    
    // requires owner adress to use this withdrawn function
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        
        // gives error if balance is not enough
        require(amount <= balance, "Insufficient funds");
        
        // update balance accordingly to amount withdrawn
        destAddr.transfer(amount); // send funds to given address
        balance -= amount;
    }
}
