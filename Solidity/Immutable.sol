// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Immutable {
    address public immutable MyAddr;
    uint public immutable MyUint;
    constructor (uint _myInt) {
        MyAddr = msg.sender;
        MyUint = _myInt;
    }
}