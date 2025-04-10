### solidity是web3开发的核心  智能合约的编程语言，主要包括以下概念：

- 1、基础结构

合约（Contract）类似面向对象中的类，包含状态变量、函数和事件（如Contract Token）；

数据类型：包括值类型（uint, address）和引用类型（array，struct）， 支持mapping实现键值对存储；

- 2、核心特性：

可见性修饰符：public（开放调用），private（仅合约内部），external（仅外部调用）；

状态可见性：view（只读），pure（无状态访问）、payable（接收ETH）；

事件（event）：用于日志记录（如emit Transfer。。。），供前端监听；

- 3、安全机制：

错误处理：require验证条件，revert回滚交易；

防重入攻击：使用nonReentrant 修饰符 或 Checks-Effects-Interactions 模式；

- 4、典型应用：

代币标准：ERC-20（同质化代币）， ERC-721（NFT）；

DeFi组件：自动做市商（AMM），借贷协议逻辑。
