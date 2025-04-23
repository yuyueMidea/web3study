**Infura,连接链下与链上的桥梁**

Infura是Consensys(小狐狸钱包母公司) 开发的区块链基础设施，帮组用户或开发者 更好地与以太坊区块链交互。

Infura是以太坊中生态中最流行的区块链节点服务提供商，为开发者提供免运维的以太坊和IPFS API访问；作为ConsenSys旗下的核心产品，Infura已成为web3开发事实标准基础设施。

在以太坊上开发的DApp应用（链下）需要与区块链（链上）交互。早期 以太坊上的基础设施很少，开发者需要在本地部署以太坊节点来完成链下和链上交互，非常麻烦且耗费时间。`Infura`在链下、链上之间搭了一座桥，让两者的交互变得简单。

**Infura主要功能特性介绍**

1、多链支持能力：以太坊生态（Mainnet、Goerli、Sepolia等测试网）；Layer2（Arbitrum、Optimism、Polygon）；其他（IPFS、Filecoin、StarkNet）。

2、核心API端点
```
# JSON-RPC示例
curl https://mainnet.infura.io/v3/YOUR-API-KEY \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}'
```
