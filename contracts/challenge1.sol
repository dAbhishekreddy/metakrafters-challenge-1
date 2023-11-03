// In this module it is asked to create a smart contract with require(),assert() and revert() statements


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Challenge {
    function requireExample(int num) external pure returns (int) {
        //Uses require to validate the given condition 
        require(num > 0, "The number must be greater than zero");
        
        // It performs the multiplication i.e like it the entered number is multipled by 2 
    
        int result = num * 2;
        
        return result;
    }
    
    function assertExample(uint num) external pure returns (uint) {
        uint result;
        
        // Uses assert to ensure a condition that must always hold
        // Here the assert statement checks the given number is not equal to zero  
        //If it is equal to zero it will give an exception and revert the transaction.
        assert(num != 0);
        
        // Performs the divison operation
        result = 10 / num;
        
        return result;
    }
    
    function revertExample(bool condition) external pure {
        // if the condition is true it will revert the transaction and gives the message the condition is true 
        if (condition) {
            revert(" The condition is true");
        }
    }
}
