// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ViewAndPure {
    uint256 public a =11;
    // view方法  只能查看不能修改
    function addToA(uint256 i) public view returns (uint256) {
        return a + i;
    }
    // pure方法不能查看不能修改
    function addNum(uint256x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}