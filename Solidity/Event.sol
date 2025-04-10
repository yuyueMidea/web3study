// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Event {
    event Log (address indexed sender, string message);
    event Log2();
    function testlog() public {
        emit Log (msg.sender, "this is a message!");
        emit Log (msg.sender, "this is a message22222!");
        emit Log2();
    }
}