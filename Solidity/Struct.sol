// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

// 用户信息存储示例、
contract UserManager {
    struct User {
        string name;
        uint256 age;
        address wallet;
    }
    mapping (address => User) public users;
    function setUser(string memory name, uint256 age) public {
        users[msg.sender] = User(name, age, msg.sender);
    }
    function getUser(address userAddr) public view returns (string memory, uint256, address) {
        User memory user = users[userAddr];
        return (user.name, user.age, user.wallet);
    }
}