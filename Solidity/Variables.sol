// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Viriables {
    string constant VERSION = "TV2.6";     //不可修改
    address immutable owner;               //部署时设定
    constructor () {
        owner = msg.sender;                 //一次性初始化
    }
    string public str1 = "helloooooooooooooo";
    uint public num1 = 1235;
    function fun1() public {
        uint x = 421;
        uint256 time1 = block.timestamp;
        address sender = msg.sender;
    }
}