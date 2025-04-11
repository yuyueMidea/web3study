// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct2 {
    struct Order {
        uint256 id;
        address buyer;
        address saler;
        uint256 price;
    }
    struct Product {
        uint256 id;
        string name;
        uint256 price;
        uint256 num;
    }
    mapping (uint256 => Order) public orders;
    uint256 public orderNum;
    function addOrder(address from, address to, uint256 price) public {
        orderNum+=1;
        orders[orderNum] = Order(orderNum, from, to, price);
    }
    function getOrder(uint256 oid) public view returns(address, address, uint256) {
        return (orders[oid].buyer, orders[oid].saler, orders[oid].price);
    }
}