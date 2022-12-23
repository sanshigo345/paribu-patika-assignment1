// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Counter { 
    // state variable count, to increase and decrease
    uint public count;
    
    // standard get function
    function get() public view returns (uint) {
        return count;
    }
    
    // function to increase the count by 1
    function inc() public {
        count++;
    }
    
    // function to decrease the count by 1
    function dec() public {
        count--;
    }
}
