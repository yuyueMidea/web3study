`Wagmi`是专为以太坊量身定制的 `React Hooks` 集合。

`Wagmi` 是一个现代化的 `React Hooks` 库，专为以太坊和EVM兼容链开发而设计，提供了一套简洁而高效的API 来连接钱包、读取链上数据和发送交易。

一、核心特性包括：1、多钱包支持；2、响应式数据获取；

二、核心`Hooks`分类：1、钱包连接分 `useConnect、useDisconnect、useAccount`； 2、链上数据读取；3、交易与合约交互。

三、高级功能：1、多链支持；2、交易状态追踪；3、`ENS` 集成。

**Wagmi核心目标是**
- 极简交互：通过 `React Hooks`连接钱包、读取链上数据、发送交易；
- 多链支持：兼容以太坊、`Polygon、Arbitrum` 等主流`EVM`链；
- 类型安全：内置 `Typescript`支持，减少开发错误。

**Wagmi 功能一览**
| 功能	| 描述	| 对应 `Hook`
|-------|-------|----
| 钱包连接	| 支持 `MetaMask、Coinbase Wallet` 等主流钱包。	| `useConnect, useAccount`
| 读取链上数据	| 查询余额、交易记录、合约状态等。	| `useBalance, useContractRead`
| 发送交易	| 执行合约调用、代币转账等。	| `useContractWrite, useSendTransaction`
| 监听事件	| 实时监听合约事件或链上状态变化。	| `useWatchContractEvent`
| 多链切换	| 动态切换网络（如从以太坊转到 `Polygon`）。	| `useNetwork, useSwitchNetwork`

**有以下技术优势**
- 零配置起步：默认连接以太坊主网，无需复杂配置；
- 轻量级：仅依赖ehters.js 和viem， 无冗余代码；
- 高性能：自动缓存请求数据，减少重复RPC调用。


**Wagmi与其他库的对比**
| 特性	| Wagmi	| Web3.js	| Ethers.js
|-------|-------|---------|---------
| 设计理念	| React Hooks 优先	| 通用 JavaScript API	| 通用 JavaScript API
| 类型支持	| 内置 TypeScript	| 需额外类型定义	| 部分支持
| 链切换	| 原生多链支持	| 需手动切换 Provider	| 需手动切换 Provider
| 包体积	| 更小（按需导入 Hooks）	| 较大	| 中等

**Wagmi适用场景**
- 1、DeFi前端开发：快速集成钱包和合约交互；
- 2、NFT平台：查询用户持仓和铸造NFT；
- 3、DAO治理面板：提案投票和状态跟踪；
- 4、多链应用：动态切换不同EVM链。


通过Wagmi，开发者可以节省50%以上的web3的前端代码量，专注于业务逻辑而非底层连接。
