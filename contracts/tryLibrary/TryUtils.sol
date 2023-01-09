// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../Utils.sol";

contract TryUtils {

    string[] public colors = ["blue", "yellow", "red"];
    uint[] public numbers = [1,4,7];
    int[] public moreNumbers = [-3,99,-5343];

    
    function compareStrings(string memory firstString, string memory secondString) public pure returns(bool) {
        return Utils.compareStrings(firstString, secondString);
    }


    function findStringIndexInArray(string memory _string) public view returns(uint){
        return Utils.findString(colors, _string);
    }


    function findUintIndexInArray(uint _number) public view returns(uint){
        return Utils.findUint(numbers, _number);
    }


    function findIntIndexInArray(int _number) public view returns(uint){
        return Utils.findInt(moreNumbers, _number);
    }


    function random() public view returns(uint) {
        return Utils.pseudoRandom();
    }
}