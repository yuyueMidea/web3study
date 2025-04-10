// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Primitives {
    bool public isTrue=true;

    uint8 public u8 =1;
    uint256 public u256 = 475;

    int8 public i8 =-2;
    int256 public i256=367;

    // max_min_int
    int256 public max256 = type(int256).max;
    int256 public min256 = type(int256).min;

    address public addr1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    bytes1 a=0x03;
    bytes1 b=0x0b;
    bytes public b1 = "Hellllllo";
}