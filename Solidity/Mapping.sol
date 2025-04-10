// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Mapping {
    mapping (address => uint) public map1;
    function getMapVal(address _addr) public pure returns (uint) {
        return map1[_addr];
    }
    function setMapVal(address _addr, uint _val) public {
        map1[_addr] = _val;
    }
    function deletemapVal(address _addr) public {
        delete map1[_addr];
    }
}

// 嵌套映射
contract NestedMapping {
    mapping (address => mapping(uint => bool)) public nestMap1;
    function getNestMapVal(address _addr, uint _key) public view returns (bool) {
        return nestMap1[_addr][_key];
    }
    function setNestMapVal(address _addr, uint _key, bool _val) public {
        nestMap1[_addr][_key]=_val;
    }
    function removeNestMapVal(address _addr, uint _key) public {
        delete nestMap1[_addr][_key];
    }
}