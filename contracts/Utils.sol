// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
Soliditool v1.0.0— keep your code clean and streamlined import it at the top of your smart contract.

import "soliditool/contracts/Utils.sol";
 */


library Utils {

    /**
    Function to compare 2 strings
    Use the compareStrings function with 2 parameters, it will compare them and return a bool value.
    For example:
    compareStrings("blue", "red") will return false.
     */
    
    function compareStrings(string memory firstString, string memory secondString) internal pure returns (bool) {
        return keccak256(bytes(firstString)) == keccak256(bytes(secondString));
    }

    /**
    Function to generate a pseudo random number
    WARNING: This function does not return a real random value, this function is to be used for testing ONLY and not in production 
    where a real random number is needed.
     */
    function pseudoRandom() public view returns (uint) {
        bytes32 blockHash = blockhash(block.number - 1);
        return uint(keccak256(abi.encodePacked(block.timestamp, uint(blockHash))));
    }

    /**
    Function to find the index matching a string in an array
    This function takes a string as a parameter and loops through an array of strings. 
    It then returns the index of the matching string (if it exists), or the 420 code if it does not exist.
     */
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

   /**
    Function to find the index matching a uint in an array
    This function takes a uint as a parameter and loops through an array of uints. 
    It then returns the index of the matching uint (if it exists), or the 90909090 code if it does not exist.
     */
    function findUint(uint[] memory array, uint _number) internal pure returns (uint) {
        for (uint i = 0; i < array.length; i++) {
            uint uintToFind = array[i];
            if (_number == uintToFind) {
                return i;
            }
        }
        return uint(90909090);
    }

    /**
    Function to find the index matching a int in an array
    This function takes a int as a parameter and loops through an array of ints. 
    It then returns the index of the matching int (if it exists), or the 90909090 code if it does not exist.
     */
    function findInt(int[] memory array, int _number) internal pure returns (uint) {
        for (uint i = 0; i < array.length; i++) {
            int intToFind = array[i];
            if (_number == intToFind) {
                return i;
            }
        }
        return uint(90909090);
    }
}
