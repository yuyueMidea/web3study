// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Time {
    uint256 oneDay = 1 days;
    uint256 oneHour = 1 hours;
    // 返回当前区块的时间戳
    uint256 currentTime = block.timestamp;
    // 设置一个截止时间【未来的一个时间节点】

    uint256 public deadline = block.timestamp + 1 days;
    function checkDeadline() public view returns (bool) {
        return block.timestamp > deadline;
    }
}