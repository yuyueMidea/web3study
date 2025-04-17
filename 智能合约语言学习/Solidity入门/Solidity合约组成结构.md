- **1、智能合约的七个基本组成结构**

智能合约由以下七个核心部分组成：

1、状态变量（State Variables），作用是存储在链上的永久结构，如代币余额，合约所有者；示例
```
uint256 public totalSupply;  // 代币总供应量  
address public owner;       // 合约管理员  
```
关系：被函数修改或读取，是合约的核心存储层。
