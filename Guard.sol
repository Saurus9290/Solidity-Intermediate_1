pragma solidity ^0.8.0;

contract ExampleContract {
    uint256 public myNumber;
    
    function setNumber(uint256 _newNumber) external {
        // Require statement to check if the new number is not zero
        require(_newNumber != 0, "New number cannot be zero.");
        
        // Assert statement to check if the new number is not larger than 100
        assert(_newNumber <= 100);
        
        // Update the number
        myNumber = _newNumber;
        
        // Revert statement to check if the new number is odd
        if (_newNumber % 2 != 0) {
            revert("New number must be even.");
        }
    }
}
