Hardhat 是以太坊最流行的开发环境，它可以帮你编译和部署智能合约，并且提供了Hardhat Network支持本地测试和运行Solidity； 它提供了一套完整的工具链，覆盖从编码、编译、测试到部署的全生命周期管理。

一、核心架构设计

Hardhat Core支持任务运行系统（包括编译、测试和部署）和插件体系（Ethers.js、Waffle、TypeChain）。

二、核心功能特性

1、开发环境增强：（1）本地网络，内置Hardhat Network，支持零配置启动、交易调试跟踪、状态快照回滚； （2）主网分叉：一键分叉主网状态（npx hardhat node --fork https://eth-mainnet.alchemyapi.io/v2/YOUR_KEY）。

2、智能合约工具链。
| 功能	| 命令示例	| 描述
|-------|---------|-------
| 编译合约	| npx hardhat compile	| 增量编译，自动缓存
| 测试运行	| npx hardhat test	| 并行测试执行
| 部署合约	| npx hardhat run scripts/deploy.js	| 支持多网络配置
| 控制台交互	| npx hardhat console	| 内置async/await REPL环境
