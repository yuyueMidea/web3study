1、讲一下 0.8 和 0.5版本的整数有什么区别
- 在solidity 0.5中，整数溢出或下溢不会报错、而是发生环绕，（如 uint8 的 255+1 会变成 0），需要依赖SafeMath 等库进行手动检查；
- 从solidity 0.8开始，编译器默认随整数的运算添加了`溢出/下溢检查`,一旦超过范围会直接revert，更安全，不必使用 SafeMath； 如果需要旧的环绕行为，可以用 `unchecked { ... }` 包裹代码来关闭检查，从而获得更高的gas效率。
- 总结， 0.5默认危险但便宜，0.8默认安全但稍贵。

2、create 和 create2 之间有什么区别？
- create 和 create2 都是用于solidity合约部署，但是计算合约地址的方式不同；
- create 新合约地址，由部署者地址和nonce决定，不可预测，必须等部署完成后才能知道；
- create2 新合约地址，由部署者地址 + salt + 合约字节码 确定，可以在部署前预测地址；
- 因此 create2用于合约地址预计算、可升级代理模式、钱包工厂 等场景，而create更简单，适合普通部署。
- 总结 create不可预测，create2可预测，且更灵活。

3、ether中gwei wei换算关系
- 1 ether = 10^18 wei
- 1 gwei = 10^9 wei
- 1 ether = 10^9 gwei
- wei 是最小单位；gwei 常用于表示 Gas 价格，方便阅读；ether 主要用于转账和展示余额。
