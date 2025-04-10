// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24

contract Function {
    // 方法可以返回多个值
    function returnMany () public pure returns (uint256, bool, uint256) {
        return (1, true, 4);
    }
    //返回值可以使用名称进行返回
    function named() public pure returns (uint256 x, bool, uint256 y) {
        return (1, true, 4);
    }
    // 返回值可以使用变量进行返回、
    function assigned () public pure returns (uint256 x, bool b, uint256 y) {
        x=1;
        b=true;
        y=5;
    }
    // 值可以解构、
    function destructureAssignments () public pure returns (uint256, uint256, bool, uint256, uint256) {
        (uint256 x, bool b , uint256 y) = returnMany()
        // 对值进行解构
        (uint256 c,, uint256 d) = (4,5,6)
        return (x, b, y, c, d);
    }
    // 使用数组作为出、入参数
    function arrayInput(uint256[] testarr1) public {}
    uint256 public testarr2;
    function arrayOutout() public view returns (uint256[] testarr1) {
        return testarr2;
    }
}
