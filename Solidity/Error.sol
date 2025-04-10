// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Error {
    function testRequire (uint256 i) public pure {
        // require用于验证输入参数的合法性，检查执行函数的条件，验证外部合约的返回值等等。
        require(i>11, "Input must be greater than 11");
    }
    function testRevert (uint256 i) public pure {
        revert用于复杂的条件判断的场景，当需要多个条件或复杂的逻辑判断的，revert更合适。
        if (i<=10) {
            revert("Input must be greater than 11");
        }
    }
    uint public number;
    function testAssert() public view {
        assert(number==0);
    }
    function divideNum(uint256 a , uint256 b) public pure returns (uint256) {
        uint256 result = a/b;
        assert(b!=0);
        return result;
    }
}