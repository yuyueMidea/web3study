// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28

contract IfElse {
    function foo1(uint256 a) public pure returns (uint256) {
        if(a<11) {
            return 0;
        } else if(a<22) {
            return 1;
        } else {
            return6;
        }
    }
    function foo2(uint256 b) public pure returns (uint256) {
        return b<11 ? 0 : 1;
    }
}