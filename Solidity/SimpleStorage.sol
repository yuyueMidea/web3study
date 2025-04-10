// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleStorage {
    uint256 public num1;
    function set(uint256 num2) {
        num1 = num2;
    }
    function get() public view returns(uint256) {
        return num1;
    }
}