# Soliditool— Solidity utils library

 This library holds pre-made functions to make your life easier when coding your smart contract. 

## Overview

This library can help you keep your code cleaner and avoid rewriting code.

### Functions in the library

Those are the functions available in this library:

#### compareStrings()

Function to compare 2 strings. Use the compareStrings function with 2 parameters, it will compare them and return a bool value.

For example:

```sol    
compareStrings("blue", "red") will return false.
```

```sol    
    function compareStrings(string memory firstString, string memory secondString) internal pure returns (bool) {
        return keccak256(bytes(firstString)) == keccak256(bytes(secondString));
    }
```

#### pseudoRandom

Function to generate a pseudo-random number. 

> WARNING: This function does not return a real random value; this function is to be used for testing ONLY and not in production where a real random number is needed.

```sol   
    function pseudoRandom() public view returns (uint) {
        bytes32 blockHash = blockhash(block.number - 1);
        return uint(keccak256(abi.encodePacked(block.timestamp, uint(blockHash))));
    }
```

#### findString

Function to find the index matching a string in an array. This function takes a string as a parameter and loops through an array of strings. It then returns the index of the matching string (if it exists), or the 420 code if it does not exist.

```sol  
    function findString(string[] memory array, string memory _string) internal pure returns (uint) {
        for (uint i = 0; i < array.length; i++) {
            string memory stringToFind = array[i];
            bool exists = Utils.compareStrings(stringToFind, _string);
            if (exists == true) {
                return i;
            }
        }
        return uint(420);
    }
```

#### findUint

Function to find the index matching a uint in an array. This function takes a uint as a parameter and loops through an array of units. 
It then returns the index of the matching unit (if it exists) or the 90909090 code if it does not exist.

```sol  
    function findUint(uint[] memory array, uint _number) internal pure returns (uint) {
        for (uint i = 0; i < array.length; i++) {
            uint uintToFind = array[i];
            if (_number == uintToFind) {
                return i;
            }
        }
        return uint(90909090);
    }
```

#### findInt

Function to find the index matching an int in an array. This function takes an int as a parameter and loops through an array of ints. 
It then returns the index of the matching int (if it exists) or the 90909090 code if it does not exist.

```sol  
    function findInt(int[] memory array, int _number) internal pure returns (uint) {
        for (uint i = 0; i < array.length; i++) {
            int intToFind = array[i];
            if (_number == intToFind) {
                return i;
            }
        }
        return uint(90909090);
    }
```

## Getting started

Download the Soliditool package into your project by running:

```sh
npm install soliditool
```

Then import it into your smart contract adding this import statement at the top:

```sol
import "soliditool/contracts/Utils.sol";
```

Here is an example:

```sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "soliditool/contracts/Utils.sol";

contract TryUtils {

    string[] public colors = ["blue", "yellow", "red"];
    uint[] public numbers = [1,4,7];
    int[] public moreNumbers = [-3,99,-5343];

    address public owner;

    function compareStrings(string memory firstString, string memory secondString) public pure returns(bool) {
        return Utils.compareStrings(firstString, secondString);
    }
}
```