// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Array {
    uint256[] public arr1 = [1,2,333];
    // 初始化长度为6的数组
    uint256[6] public arr2;
    string[3] public arr3 = ["test", "we4", "fg"];
    function getOne(uint256 i) public pure returns (uint256) {
        return arr1[i];
    }
    function getArr() public view returns (uint256[] test1) {
        return arr1;
    }
    // 添加一个元素
    function pushOne(uint256 x) public {
        arr1.push(x);
    }
    // 删除最后一个元素
    function popLast() public {
        arr1.pop();
    }
    // 获取数组长度、
    function getLen() public view returns (uint256) {
        return arr1.length;
    }
    // 删除数字某个元素
    function removeX(uint256 x) public {
        delete arr1[x]
    }
}