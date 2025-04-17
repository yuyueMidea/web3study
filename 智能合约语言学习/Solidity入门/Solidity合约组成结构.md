- **1、智能合约的七个基本组成结构**

智能合约由以下七个核心部分组成：

1、状态变量（State Variables），作用是存储在链上的永久结构，如代币余额，合约所有者；示例
```
uint256 public totalSupply;  // 代币总供应量  
address public owner;       // 合约管理员  
```
关系：被函数修改或读取，是合约的核心存储层。

2、函数（Functions），作用是定义可执行的操作，如转账、授权，分类有pure、view（只读函数），payable（可接收ETH的函数）；示例：
```
function transfer(address to, uint256 amount) public {  
    balances[msg.sender] -= amount;  
    balances[to] += amount;  
}
```
关系：操作状态变量，触发事件或调用其他合约。

3、事件（Events），作用是记录链上日志，供前端监听，如代币转账记录；示例：
```
event Transfer(address indexed from, address indexed to, uint256 value);
```
关系：由函数触发，与状态变量变更同步。

4、修饰器（Modifiers），作用是复用权限或条件检查逻辑，如onlyOwner；示例：
```
modifier onlyOwner {  
    require(msg.sender == owner, "Not owner");  
    _;  // 继续执行函数体  
}
```
关系：附加到函数上，增强安全性或功能。

5、构造函数（Constructor），作用是合约部署时初始化状态；示例：
```constructor() {  
    owner = msg.sender;  
}  
```
关系：仅在部署时运行一次，初始化关键状态变量。

6、回退函数（Fallback、Receive），作用是处理未匹配函数调用或纯ETH转账；示例：
```
receive() external payable {}  // 接收 ETH  
fallback() external {}        // 处理未知调用
```
关系：作为合约的默认入口，与外部调用交互。

7、结构体与映射（Structs & Mappings），作用是组织复杂的数据，如用户信息、代币持有记录；示例：
```
struct User {  
    uint256 balance;  
    bool isActive;  
}  
mapping(address => User) public users;
```
关系：作为状态变量的高级数据结构，被函数读写。

各组件之间的协作关系是：
```
1、用户调用函数→ 函数通过修饰器验证权限→ 修改状态变量→ 触发事件；
2、构造函数初始化合约→ 设置所有者（owner）和初始状态；
3、外部合约、用户发送ETH→ → 回退函数处理→ 更新余额状态变量。
```
总结：智能合约通过七大结构的组合实现：数据存储（状态变量、结构体、映射）；逻辑执行（函数、构造函数、回退函数）；安全控制（修饰器）；链外通信（事件）。

掌握这些结构及交互方式，是编写安全高效合约的基础。

