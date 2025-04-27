`Wagmi`是专为以太坊量身定制的 `React Hooks` 集合。

`Wagmi` 是一个现代化的 `React Hooks` 库，专为以太坊和EVM兼容链开发而设计，提供了一套简洁而高效的API 来连接钱包、读取链上数据和发送交易。

一、核心特性包括：1、多钱包支持；2、响应式数据获取；

二、核心`Hooks`分类：1、钱包连接分 `useConnect、useDisconnect、useAccount`； 2、链上数据读取；3、交易与合约交互。

三、高级功能：1、多链支持；2、交易状态追踪；3、`ENS` 集成。

**Wagmi 功能一览**
| 功能	| 描述	| 对应 Hook
|-------|-------|----
| 钱包连接	| 支持 MetaMask、Coinbase Wallet 等主流钱包。	| useConnect, useAccount
| 读取链上数据	| 查询余额、交易记录、合约状态等。	| useBalance, useContractRead
| 发送交易	| 执行合约调用、代币转账等。	| useContractWrite, useSendTransaction
| 监听事件	| 实时监听合约事件或链上状态变化。	| useWatchContractEvent
| 多链切换	| 动态切换网络（如从以太坊转到 Polygon）。	| useNetwork, useSwitchNetwork
