// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    //Implemented Fixed-Size Array Technique Here
    //1.implemented fixed-size array
    uint[10] numbers = [1,2,3,4,5,6,7,8,9,10];
    
    //Function to check for sum of array
    //No changes required in this function
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    
    function notOptimizedFunction() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }
    
    //Implement Remaining Gas Optimization Techniques Here
    //Sum of elements in the numbers array should equal 0
    function optimizedFunction() public {
        //Caching frequently accessed state variable i.e.length of array
        uint _d = numbers.length;
        //unchecked block for skipping certain checks such as integer overflows
        unchecked{
        // using different for loop increment syntax
         for (uint i = 0; i < _d;++i) {
            numbers[i] = 0;
         }
    }
    
    }
        
}