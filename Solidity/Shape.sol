// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Shape {
    // 定义一个几何形状的结构体
    struct Shape {
        uint width;
        uint height;
        string shapeType;
        bool isFilled;
    }
    // 使用枚举定义一些形状类型、
    enum ShapeType {
        Circle,
        Triangle,
        Rectangle,
    }
    // 标识图形形状的，坐标点结构
    struct Point {
        uint x;
        uint y;
    }
    struct Circle {
        Point center;
        uint radius;
    }
    struct Rectangle {
        Point topLeft;
        Point BottomRight;
    }
    
}
    // 实现一个简单的几何形状
contract Geometry {
    struct Circle {
        uint radius;
    }
    struct Rectangle {
        uint width;
        uint length;
    }
    // 获取长面积
    function getCircleArea(Circle memory c) public pure returns (uint256) {
        return 3.14* c.radius * c.radius;
    }
    function getRecArea(Rectangle memory rt) public pure returns(uint256) {
        return rt.width * rt.length;
    }
}