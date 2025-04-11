// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct3 {
    struct Userful {
        address uid;
        uint256 balance;
        uint256 age;
    }
    struct Transcation {
        address from;
        address to;
        bytes name;
    }

    mapping (address => Userful) public users;
    function addUser(address uid, uint256 balance, uint256 age) public {
        users[uid] = Userful(uid, balance, age);
    }
}