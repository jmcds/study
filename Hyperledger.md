### Blockchain Demo
https://anders.com/blockchain/

### 供应链可追溯性/防伪
https://wiki.hyperledger.org/_media/groups/requirements/hyperledger_-_supply_chain_traceability-_anti_counterfeiting.pdf

### Tutorial: Hyperledger Fabric v1.1 – Create a Development Business Network on zLinux
https://github.com/CATechnologies/blockchain-tutorials/wiki/Tutorial:-Hyperledger-Fabric-v1.1-%E2%80%93-Create-a-Development-Business-Network-on-zLinux#toc9

### fabric 翻译项目
https://lists.hyperledger.org/pipermail/hyperledger-twg-china/2017-November/000419.html
https://wiki.hyperledger.org/groups/twgc/team_ie

### mkdoc
https://github.com/HyperledgerCN/hyperledgerDocs/blob/master/docs/index.md  
先[安装pip](http://pip.readthedocs.io/en/latest/installing/)  
```
pip install mkdocs  
pip install python-markdown-math
git clone https://github.com/HyperledgerCN/hyperledgerDocs
cd hyperledgerDocs
mkdocs build
mkdocs serve  --dev-addr 192.168.16.103:8000
```
用浏览器访问192.168.16.103:8000即可。build时曾发现缺了mdx_math扩展，安装python-markdown-math后解决。  

### hyperledger wiki
https://wiki.hyperledger.org/projects/fabric

### Deploying to a multi-organization Hyperledger Fabric
https://hyperledger.github.io/composer/unstable/tutorials/deploy-to-fabric-multi-org.html

### 跨链
[quilt](https://github.com/hyperledger/quilt)Hyperledger Quilt - An implementation of the Interledger Protocol  

### 区块链案例
Everledger：钻石追溯
Ascribe：艺术品、论文等版权保护
mediachain：创意保护
monegraph：编辑、博客等内容所有者保护作品
Chronicled.com: 供应链追溯

### 共识机制，可编程的“利益”转移规则
[一本书](http://bitcoin-on-nodejs.ebookchain.org/1-%E4%BA%86%E8%A7%A3%E5%8A%A0%E5%AF%86%E8%B4%A7%E5%B8%81/7-%E5%85%B1%E8%AF%86%E6%9C%BA%E5%88%B6%EF%BC%8C%E5%8F%AF%E7%BC%96%E7%A8%8B%E7%9A%84%E2%80%9C%E5%88%A9%E7%9B%8A%E2%80%9D%E8%BD%AC%E7%A7%BB%E8%A7%84%E5%88%99.html)
POW,POS,DPOS


### composer-rest-server认证数据持久化
[链接](https://github.com/hyperledger/composer/blob/master/packages/composer-website/jekylldocs/integrating/deploying-the-rest-server.md)  

### passport-ldap
[1](https://stackoverflow.com/questions/45734046/using-passport-http-on-hyperledger-composer-rest-api)  
```
  export COMPOSER_PROVIDERS='{
  "basic": {
    "provider": "basic",
    "module": "passport-http",
    "clientID": "REPLACE_WITH_CLIENT_ID",
    "clientSecret": "REPLACE_WITH_CLIENT_SECRET",
    "authPath": "/auth/local",
    "callbackURL": "/auth/local/callback",
    "successRedirect": "/",
    "failureRedirect": "/login" 
     }
    }'
```
[2](https://github.com/hyperledger/composer/issues/2065)  
这个网页讲到调用的URL。  
```
export COMPOSER_PROVIDERS='{ "ldap": { "provider": "ldap", "authScheme": "ldap", "module": "passport-ldapauth", "authPath": "/auth/ldap", "successRedirect": "/", "failureRedirect": "/failure", "session": false, "json": true, "profileAttributesFromLDAP": { "login": "uid", "username": "uid", "displayName": "givenName", "email": "mail", "externalId": "uid" }, "server": { "url": "ldap://ldap.xxx.com:389", "bindDn": "uid=aldred,ou=Users,o=xxx,dc=xxx,dc=com", "bindCredentials": "caveman", "searchBase": "ou=Users,o=xxx,dc=xxx,dc=com", "searchFilter": "(uid={{username}})" } } }'
```

### docker.sock permission denied
```
sudo usermod -a -G docker $USER
```
当前用户需要重新登录，然后执行docker ps就正常了。

#### p2p ssh
https://github.com/nobonobo/ssh-p2p

### 数字资产保护
https://www.ascribe.io
文档：C:\Users\wbwang\Desktop\区块链\oreilly-blockchain-by-melanie-swan.pdf

### blockchain demo
https://github.com/anders94/blockchain-demo

[![](https://camo.githubusercontent.com/a9e81eef2ba0dfa94a66c2200569cb0c00bf3eb2/68747470733a2f2f696d672e796f75747562652e636f6d2f76692f5f3136306f4d7a626c59382f302e6a7067)](https://www.youtube.com/watch?v=_160oMzblY8)

### Token

Token是一种数字化的价值载体，是权益证明。加密的，可流通。[1](https://www.jianshu.com/p/981689784579)

区块链的 token被广泛认识，归功于以太坊及其订立的 ERC20标准。基于这个标准，任何人都可以在以太坊上发行自定义的 token，这个token可以代表任何权益和价值。现在用 token来作为代币权益证明进行ICO是一个普遍的做法。...今天我想提出一个建议，就是把 token 翻译成为“通证”，意思是就是“可流通的加密数字权益证明”。... “通证”三要素：第一是数字权益证明；第二是加密；第三是可流通。...有必要放在区块链上的程序，目前看就是涉及价值交换、权益管理之类的应用，或者说的更直白一点，就是涉及通证的应用。...通证启发和鼓励大家把各种权益证明，比如门票、积分、合同、证书、点卡、证券、权限、资质等等全部拿出来通证化（tokenization），放到区块链上流转，放到市场上交易，让市场自动发现其价格，同时在现实经济生活中可以消费、可以验证，是可以用的东西，这是紧贴实体经济的。[2](http://blog.csdn.net/myan/article/details/78712506)。

### Enigma
Enigma被认为是一个保护用户隐私的项目，因为内容不再上传到云服务商手里。麻省理工的一个项目，用于文件加密分享。与迅雷玩客币机制类似，奖励给帮其他用户存储的人。用比特币支付。  
Enigma系统将数据分解成碎片，然后使用一些巧妙的数学方法对这些数据进行掩盖。单独从每一碎片获知数据是不可能的，你不可能重新获得有关的原始数据。  

### 有用的blockchain资源（Blockchain-stuff）
https://github.com/Xel/Blockchain-stuff

### blockchain场景
参考了[Blockchain-stuff](https://github.com/Xel/Blockchain-stuff)

#### LBRY
LBRY是一个标准，虽然提供了参考实现。
https://github.com/lbryio/lbry：LBRY is a free, open, and community-run digital marketplace.
LBRY是第一个由市场参与者控制的数字市场。去中心的内容分享，支持付费获取内容，社区控制。
保护隐私vs恐怖分子的隐私；开车旅行很奇妙vs每天撞死几百万人；
和BitTorrent相比：发布和购买行为被记录；侵权内容的URL可以被更改（原理不明）；
不收取租金：没有必要给予45％的YouTube或30％的苹果。

#### artlery
art-backed加密货币(CLIO)，致力于艺术家分享作品并获得收益。

#### ascribe.io
可以上传文件，获得保护。Lock in attribution, securely share and trace where your digital work spreads.

#### bitmark
BITMARK GIVES YOU THE TOOLS TO TURN YOUR DIGITAL ASSETS INTO CRYPTO PROPERTY AND ENTER THE DATA ECONOMY.
bitmark交给你一个工具，将你的数字资产变成加密财产并进入数字经济。
(也是上传文件，生成数字指纹)
bitmark依赖IFTTT进行数字资产的共享、分发、交易。

#### binded
Copyright made simple。The easy way to protect your images, free forever.

#### everledger.io
钻石保真。Everledger成功的背后一半核心是区块链技术，另外一半则是宝石指纹技术。

### EthList：Ethereum Reading List
https://github.com/Scanate/EthList

### 区块链主流开源技术体系介绍
http://www.8btc.com/elwingao-blockchain-6

### 解决区块链三大问题的利器
http://www.8btc.com/elwingao-blockchain-7  
[同态加密](https://www.zhihu.com/question/27645858)  

### 量子链Qtum
量子链Qtum是中国社区原创的区块链公链。Qtum通过价值传输协议（Value Transfer Protocol）来实现点对点的价值转移，并根据此协议，构建一个支持多个行业的（金融、物联网、供应链、社交游戏等）去中心化的应用开发平台（DAPP Platform）。

量子链的定位是，做一个符合行业监管的区块链去中心化应用开发平台。[1](http://www.8btc.com/elwingao-blockchain-5)  

### 区块链应用开发入门
[1](http://www.8btc.com/elwingao-blockchain-1)
####  比特币
1. 基于Blockchain.info的API进行开发  
2. 采用Docker容器来快速安装和配置私有节点的比特币测试网络(bitcoin-testnet)作为开发试验环境  

### p2p网络原理
https://github.com/FactomProject/factomd/tree/5ea4f88d9019885aa89d933f4b8987fccbae1987/p2p

### 区块链笔记
http://book.8btc.com/books/1/master_bitcoin/_book/

一枚电子货币（an electronic coin）是这样的一串数字签名：每一位所有者通过对前一次交易和下一位拥有者的公钥(Public key) 签署一个随机散列的数字签名，并将这个签名附加在这枚电子货币的末尾，电子货币就发送给了下一位所有者。而收款人通过对签名进行检验，就能够验证该链条的所有者。
#### REST查询比特币钱包的例子
[1](http://book.8btc.com/books/1/master_bitcoin/_book/2/2.html)
查找Alice的比特币地址所有的未消费的输出:
```
$ curl https://blockchain.info/unspent?active=1Cdid9KFAaatwczBwBttQcwXYCpvK8h7FK
{
  "unspent_outputs": [
    {
      "tx_hash":"186f9f998a5...2836dd734d2804fe65fa35779",
      "tx_index":104810202,
      "tx_output_n":0,
      "script":"76a9147f9b1a7fb68d60c536c2fd8aeaa53a8f3cc025a888ac",
      "value":10000000,
      "value_hex":"00989680",
      "confirmations":0
    }
  ]
}
```
[点击查看Joe和Alice间的交易信息](https://blockchain.info/tx/7957a35fe64f80d234d76d83a2a8f1a0d8149a41d81de548f0a65a8a999f6f18)

#### 交易输出是个脚本
Alice的交易输出会包含一个脚本，这个脚本说 “这个输出谁能拿出一个签名和Bob的公开地址匹配上，就支付给谁”
#### Merkle树
Merkle树是一种哈希二叉树，它是一种用作快速归纳和校验大规模数据完整性的数据结构。  
H~A~ = SHA256(SHA256(交易A))  
交易HK由4个哈希值（在图7-5中由蓝色标注）HL、HIJ、HMNOP和HABCDEFGH组成的路径证明其存在。  
![](http://book.8btc.com/books/1/master_bitcoin/_book/7/Fig705.png)

### 以太坊官网文档中文版
[文档](http://book.8btc.com/books/6/ethereum/_book/)  
以太坊官网：https://ethereum.org/  


[1](http://book.8btc.com/books/6/ethereum/_book/ethereum-account-management.html)如果我们把以太坊限制为只有外部账户，只允许外部账户之间进行交易，我们就会进入到"代币"系统，"代币"系统不如比特币本身有力，只能用于转移以太币。

#### go客户端
[1](https://ethereum.github.io/go-ethereum/install/)
```
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
```

EthStats.net是以太坊网络实时数据的仪表板  

#### geth使用
新建账号和看清单：
```
geth account new
geth account list
```
进入控制台：
```
geth console 2>> file_to_log_output
> eth.accounts
["0xa654c3043227997abf38e16e2cb071b480dfe603"]
> net.listening
true
> net.peerCount
4
```
#### 以太坊监控
https://ethstats.net/

#### 智能合约Solidity编程语言
http://www.tryblockchain.org/

#### 以太坊HelloWorld学习
https://github.com/littleredhat1997/Ethereum

#### 七节以太坊教程
本教程一共有七节课，主要是通过Nodejs来开发基于以太坊的Dapp应用教学，功能简单，容易上手，为你打开一个除了truffle的另一个应用开发模式。  

### IBM区块链平台
https://console.bluemix.net/docs/services/blockchain/index.html

### linux看硬盘空间
`df -h`看整个VM的存储使用情况，单位是字节；`du .`查看某目录占用的空间大小，单位是k。

### 手把手教你发行自己的以太坊ERC20 Token
[1](http://blog.csdn.net/sinat_34070003/article/details/79107181)
安装chrome插件metamask，连接以太币测试网Ropsten Test Net，领了4个ETH。  

#### 以太坊浏览器
https://ropsten.etherscan.io/

### 杨海勇做的composer-playground多租户POC
https://note.youdao.com/share/?id=428fa61d01b21264f68067b56b995246&type=note#/

### webpack 网页依赖管理和打包工具
[官方快速开始](https://webpack.js.org/guides/getting-started/)  

###  智能合约中存在的3种最常见的误解
http://blog.csdn.net/wo541075754/article/details/79061040

### Swarm vs IPFS
https://ethereum.stackexchange.com/questions/2138/what-is-the-difference-between-swarm-and-ipfs

### 区块链向Web开发人员解释，第1部分：理论
https://marmelab.com/blog/2016/04/28/blockchain-for-web-developers-the-theory.html  
在编写《区块链入门》时引用了该文章的文字和图片  

### 隔离见证 (Segregated Witness)
https://www.zhihu.com/question/58567061  

而隔离见证 (Segregated Witness，以下简称SW) ，是由比特币核心开发员Pieter Wuille 在2015年12月於香港提出的软分叉非常巧妙地彻底解决了这个问题（在交易发出後，确认前的交易ID可以被任意更改）。SW用户在交易时，会把比特币传送到有别於传统的地址。当要使用这些比特币的时候，其签署 (即见证)并不会记录为交易ID的一部份，而是另外处理。也就是说，交易ID完全是由交易状态 (即结馀的进出) 决定，不受见证部份影响。

比特币的交易主要是由两部分的数据组成的，一部分为”基础交易数据”，负责记录交易比特币的来源和去处；另一部分为“见证数据” 即签名脚本(sigature script)，目的是为了证明交易请求是否真实可信。每一笔交易都对应一串 64 位的十六进制哈希交易ID(TxID)标识。TxID 的计算方法使得任何人可以对交易做微小的改动，不会改变交易的内容，但是会改变TxID，这就是所谓的第三方延展性。隔离认证的目的之一就是为了解决交易延展性问题， Mt.GoX 当年的比特币60 多万的比特币被盗就是利用交易延展性。隔离认证的想法就是把签名脚本从交易中单独那出炉放在一个新的数据结中，而且在审计区块大小的时候并不审计签名这部分的体积，所以隔离认证不仅可以扩容，而且在同样体积下的区块下也能放进去更多的交易，但是问题就是验证交易的时候需要单独验证签名部分的数据结构，会增加验证耗费，如果矿工不配合的话，那么问题自然也就出现了 。

### 以太坊：什么是ERC20标准？
https://www.jianshu.com/p/a5158fbfaeb9

### 侧链：为什么研究者认为它解决了谜题中的重要一环
http://www.8btc.com/sidechains-solved-key-piece-puzzle

### 薛蛮子: 区块链改变生产关系
http://www.8btc.com/xue-man-zi-says-blockchain-equip-everyone-with-ablity-to-create-bat
区块链精神的认识： 首先是信任的规模化。其次是代码即共识，第三个是赋能到个体。

### Chrome插件开发
https://www.cnblogs.com/liuxianan/p/chrome-plugin-develop.html

### 解读：智能合约、以太坊、ICO
https://www.kaspersky.com.cn/blog/ethereum-ico/8756/

### Plasma
http://www.ceoclub.cc/blockchain/20170826/761.html
 昨天，Vitalik Buterin和Joseph Poon发布了Plasma项目的工作草案。
是一个以太坊的子链/侧链方案

### Algorand
http://www.8btc.com/sivio-micali-algorand  
图灵奖得主Sivio Micali的Algorand区块链协议简介  
随机投票的共识算法  

### 从零构建基于以太坊（Ethereum）钱包Parity联盟链
http://www.8btc.com/ethereum-parity  

### ConsenSys的BTC Relay，被认为是第一个侧链
http://www.8btc.com/relay-connecting-ethereum-with-bitcoin  

### Regis是一个平台，它能够构建、部署和管理在以太坊区块链分散登记
http://www.8btc.com/regis-decentralized-registry  

### uPort基于区块链的身份验证
https://www.jianshu.com/p/12a2454440bf
项目官网:uport.me

### 以太坊上的去中心化自治组织管理应用：Aragon白皮书（中文）
Aragon Network: 去中心化的价值交换基础设施  
http://ethfans.org/posts/aragon-network-whitepaper  

### Merkle Patricia Tree 梅克尔帕特里夏树（MPT）规范
http://me.tryblockchain.org/Ethereum-MerklePatriciaTree.html  

### 以太坊开发入门，完整入门
http://blog.csdn.net/uxiAD7442KMy1X86DtM3/article/details/79385479  
涉及Merkle树、IPFS、Gelem、Mist、Status、MetaMask、Parity等，很全面

### Filecoin：一种去中心化的存储网络
http://chainx.org/paper/index/index/id/13.html

### ENS 以太坊名称解析
ENS注册地址：https://registrar.ens.domains  
介绍文章：http://8btc.com/thread-93086-1-1.html  

### 比特币交易（Transaction）的输入与输出
http://blog.csdn.net/taifei/article/details/73735289

### www.provenance.org 一个产品溯源网站
基于以太坊

### Ethereum explained...[to your mother]
https://ethereum.stackexchange.com/questions/45/how-would-i-explain-ethereum-to-a-non-technical-friend

### 星火节点计划Windows接入文档
https://article.pchome.net/content-2045443.html
国内以太坊节点数量不足300个，而且国内特殊的网络原因也会影响到国内用户同步区块数据。为了国内用户更加流畅地同步区块，EthFans 发起星火节点计划。

### cosmos vs polkadot   跨链

### polkadot中文白皮书
https://wenku.baidu.com/view/348dee67590216fc700abb68a98271fe910eaf3b.html

### Ethereum Private chain Explorers 

https://ethereum.stackexchange.com/questions/13667/ethereum-private-chain-explorers  

Hosted Testnet (Morden) Explorers:

https://morden.ether.camp

http://testnet.etherscan.io

Open source projects:

https://github.com/gobitfly/etherchain-light

https://github.com/etherparty/explorer

https://github.com/maran/ethereum-blockchain-explorer

### 以太坊的一个POA侧链
https://poa.network/

### 权威证明PoA（Proof of Authority）
[参考1](https://www.zhihu.com/question/267204915)  
所谓权威证明（PoA），就是使用一组所谓的“权限” 来允许人们在区块链上创建新的节点并确保区块链的安全。以太坊测试网（Kovan）便是采用PoA算法。在PoA中，验证者（validator）是整个共识机制的关键。验证者不需要昂贵的显卡(如POW)，也不需要足够的资产(如POS)，但他必须具有已知的，并且已获得验证的身份。验证者通过放置这个身份来获得担保网络的权利，从而换取区块奖励。若是验证者在整个过程中有恶意行为，或与其他验证者勾结。那通过链上管理可以移除和替换恶意行为者。现有的法律反欺诈保障会被用于整个网络的参与者免受验证者的恶意行为。

**POA 网络（POA Network）：**好了，终于到了我们的正题，什么是POA网络？ POA网络便是建立在PoA共识之上的底层区块链。在POA网络中，每个验证者（validator）都必须在美国境内拥有公证许可。人们需要通过POA网络身份DApps进行身份验证，包括住址证明和无犯罪记录证明等。然后进行所谓的启动仪式（initiation ceremony）来获得密钥。通过的验证者便可以担当起保护网络的安全的重任，并获得回报。 POA网络作为一个底层链，其上的每一个新的专用链都可以使用相同的验证器，或者拥有自己的一套验证器以及其他任何类型的可验证许可证。

![img](https://pic2.zhimg.com/80/v2-f778c545d345c2237ea3e8b26d6b8088_hd.jpg)

通俗的理解就是，以前我们交易需要一群互不认识的人来拼算力，艰难的计算一道复杂的数学题，从而争出个输赢。而现在，我们只需要有一个信得过的人（至少得到了他们团队的认可）做担保，便可快速通过交易。而这个人也会因为为这笔交易做担保，而获得报酬。要是这个担保人使坏怎么办？没关系，其他的可信担保人看着呢，他要是敢使坏，我踢你出局。而要是担保人故意为难你呢？没关系，现有的法律可以保证你的合法权益（注意，数字资产丢失不在我国法律保护范围）。附上一个他们网络中一位验证者对PoA机制的视频介绍链接：[https://youtu.be/5RumGukS8pw](https://link.zhihu.com/?target=https%3A//youtu.be/5RumGukS8pw)最后还需要强调一下，POA网络除了共识机制以外，和以太坊网络完全一样。也就是说你在以太坊网络上想干的事都可以在POA网络上干，什么智能合约啦，发行新币啦，建立自己的DApps啦，都没有问题。

**如何评价POA网络：**说了那么多，上面都是答非所问。现在来谈谈我对POA网络的看法。POA网络确实是对以太坊网络现如今诸多不合理问题的一个解决方案。他相对于以太坊网络有很好的兼容，同时具有极大的优势。1. 官方宣称**5s**就能打包一个区块，而我们的大以太受阻塞时，可能一个小时后，你还收不到你的代币。2. 不需要挖矿，节能环保3. 整个网络，验证者互相监督，随时可以投票加入新的验证者或者剔出不合格验证者4. 所有的验证者都跟网络签署了协议，若谁要想在POA上弄个新的分叉出来（POC？），那不行，这是要走基本法的5. 高度可扩展性和高度兼容性，智能合约也信手拈来，让其成为优化的ETH2.0

![img](https://pic3.zhimg.com/80/v2-ab4700a716093b2c183036c7d8d2ee8a_hd.jpg)

优点固然多，解决方案也巧妙。但是不知道大家有没有和我同样的疑问，这样的机制还是一个去中心的网络吗？在智能合约作为信任的基础上，POA网络将人与人由合约建立其的信任，转变成人与人对网络中验证者的信任。而将对验证者的信任，转变成对那些对验证者身份进行审核的人的信任。最终转变的结果是，**我相信你们选出来的验证者绝大多数都是好人，且这之中大多数人互相不认识，不会串通起来为所欲为**。解决区块链问题往往难以得到两全，有时候获得速度，可能就要丧失一些安全。这个“两全之策”背后，确无法让我停下思考，这样的网络真的安全吗？这样的网络真的可以托付起未来区块链改变互联网的重任吗？现如今区块链尚未成熟，区块拥堵问题，并没有完美无瑕的解答，不管是硬分叉，还是强制扩容，或是新兴的闪电网络，在尝试过程中PoA共识也是其中的一个方案。我们难以评判孰好孰坏，“实践是检验真理的唯一标准”，好不好，试了才知道。以上只是笔者自己的一些思考，有什么不足还请指教。谢谢！

(陈龙的回答)

权威证明机制Proof of Authority(POA) 是运用在区块链上的通过基于身份权益的治理机制来传递迅速交易的算法。在基于POA的网络中，交易和区块被已知的账户即见证人验证。见证人运行允许他们把交易打包进区块的软件。这个过程是自动化的并不需要见证人时刻的监控电脑。
**POA与工作证明机制(POW)和权益证明机制(POA)的区别**
POW和POS共识都使用了挖矿的机制，而POA不是
POS机制使用了一个机制，选择有最高权益的参与者作为见证人，这个机制假设最大的权益者是被 确认交易被处理所激励的。POW在交易被确认之前通过验证工作已经被完成来运行
同时，POA使用了个人身份作为单独的权威证明去验证，这意味着整个过程不需要挖矿
**POA与代理权益机制的区别(DPoS)**
DPOS通过使用见证人产生区块来运行。见证人是被利益相关者选举出来的，选举方法是一票一个见证人一份权益。然而，在POA中，权威的指定是事先钦定的，这意味着不会由于不公平的权益(Stake)产生偏见和不公平的过程。在POA中，见证人需要用他们自己的身份通过Dapps正式验证，并且在公开的领域他们的身份信息对每一个人都是透明可见的。
**POA的优势**
POA背后的理念是个人争取去成为见证人的权利，因此他们有保持自己原有地位的激励。通过把身份和声誉绑定在一起，见证人被激励去验证交易和维护网络安全，他们不会希望把自己的身份和一个不好的声誉联系在一起。这个机制被认为比普通的权益证明机制（POS）更安全

### 揭秘18年顶级区块链基础设施，POA有望成为第2个以太坊，投前必读
https://baijiahao.baidu.com/s?id=1594747466218367000&wfr=spider&for=pc  
POS: 代表：未来币以及转型之后的以太坊。  
DPOS: 代表：EOS。  
POA: 代表： POA Network （https://poa.network/）

### 盘点国内最热门的五款区块链项目：量子链、红烧肉、共享链、公信宝、NEO
http://app.myzaker.com/news/article.php?pk=5a311c581bc8e0b55a000001  

### 可参考的区块链白皮书
[Qtum量子链v0.6](https://s.qtum.site/white-papers/%5B2016-08-01%5DQuantum-White-Paper-v0.6-CN.pdf)(新版是英文的)  
[Bytom比原链](http://bytom.io/BytomWhitePaperV1.0.pdf)  
[公信宝区块链技术和应用白皮书(V2.0.0)](https://github.com/gxchain/whitepaper/blob/master/zh/whitepaper.md)  
[iCubeChain 白皮书：超级智能自金融网络](https://github.com/wbwangk/wbwangk.github.io/raw/master/Docs/iCubeChain%20%E7%99%BD%E7%9A%AE%E4%B9%A6%EF%BC%9A%E8%B6%85%E7%BA%A7%E6%99%BA%E8%83%BD%E8%87%AA%E9%87%91%E8%9E%8D%E7%BD%91%E7%BB%9C%20.pdf)  
[中钞可信登记开放平台白皮书](https://github.com/wbwangk/wbwangk.github.io/raw/master/Docs/%E4%B8%AD%E9%92%9E%E5%8F%AF%E4%BF%A1%E7%99%BB%E8%AE%B0%E5%BC%80%E6%94%BE%E5%B9%B3%E5%8F%B0%E7%99%BD%E7%9A%AE%E4%B9%A6.pdf)  

### 区块链的预言机oracle机制解释
http://www.sohu.com/a/215929325_686941  

### Setup your first Parity PoA network in a few commands
https://github.com/dstarcev/parity-poa-playground  
自带了[ethstats](https://github.com/cubedro/eth-netstats)面版。  
有3个authority节点和3个member节点构成的集群。安装在u1601上。  

### Kovan基于POA共识的以太坊测试网络
http://www.8btc.com/parity-pushes-new-ethereum-testnet

### 当区块链延伸到版权保护 这些问题值得深思
http://mp.weixin.qq.com/s/AFdVIDx7gVLPeYtVnmOR9w

### 溯源链
https://www.tacchain.io/Index/index_c.html

### sybil attack （女巫攻击）
http://blog.csdn.net/qq_35056292/article/details/60480292  

### 加密货币市值
https://coinmarketcap.com/zh/all/views/all/  
排名144位的是POA Network

### 【Chainge之供应链金融】系列二：区块链3.0：分道扬镳，说散就散
http://www.8btc.com/178811-2

### solidity变量的一个教程
http://wiki.jikexueyuan.com/project/solidity-zh/types.html

### 以太坊中文文档（riversyang翻译）
https://github.com/riversyang/homestead-guide-cn

### 以太坊轻钱包或钱包托管
https://github.com/ConsenSys/eth-lightwallet

### Proof of Existence 
https://proofofexistence.com/
A web application to prove the existence of documents using the blockchain

### The blockchain for Smart Media Tokens (SMTs) and decentralized applications. https://steem.io
https://github.com/steemit/steem

### “比特币是Wei Dai在网络朋克中所提到的B-Money构想和尼克·萨博提出的Bitgold的具体实现。”
http://www.8btc.com/bitcoin-lovers

### CryptoPunk
https://github.com/larvalabs/cryptopunks  
Collectible 8-bit characters on the Ethereum blockchain. http://www.larvalabs.com/cryptopunks

### 令牌是什么
https://github.com/ethereumbook/ethereumbook/blob/develop/tokens.asciidoc

### ethereumbook中文版
https://github.com/AMTCOIN/ethereumbook_zh

### 开源的在线钱包
https://github.com/MyCryptoHQ/MyCrypto   

### 以太坊实现的零售商店
https://github.com/brakmic/BlockchainStore

### awesome-ethereum
https://github.com/btomashvili/awesome-ethereum

### 基于以太坊的声誉
https://github.com/Iudex/Iudex
用户需要绑定外部账号，如微博，然后通过 http://oraclize.it/ 抓取数据，进行计算

### 以太坊节点数、客户端版本、节点分布等
https://ethernodes.org/network/1  
Parity：4916，Geth：9527， 总数：16326  

Total16326 (100%)  
United States5751 (35.23%)  
China2376 (14.55%)  
Canada923 (5.65%)   
Germany843 (5.16%  

### 以太坊分片的中文讲座
https://www.youtube.com/watch?v=GhuWWShfqBI

### 拼图游戏（收币、补天）源码
https://github.com/beidan/Puzzle

### 以太坊基金会声明反对EME作为W3C推荐标准
https://blog.ethereum.org/2017/08/21/statement-objecting-w3c-publishing-eme-recommendation/  
EME是加密媒体扩展的缩写

### 中国将建区块链国家标准，最快2019年完成
http://www.8btc.com/blockchain_standard_2019

### 沈寓实：“互链网”时代即将到来，区块链是中国的重大机遇
http://www.8btc.com/blockchain_security_chance  
网络空间世界观——两重世界与五域重构  
信息互联网向价值互联网转变  
区块链技术构建网络空间超互联未来  

### zkSNARK介绍
https://blog.ethereum.org/2016/12/05/zksnarks-in-a-nutshell/  
zkSNARK的可能性令人印象深刻，您可以验证计算的正确性，而无需执行它们，您甚至不会知道执行了什么 - 只是它正确地完成了。  
解释RSA、零知识证明等。  

### 世界银行权威点评比特币、以太坊、瑞波币的弊端
http://www.8btc.com/world-bank-digital-currency  
挖矿难度分析： 几乎相当于整个孟加拉国的耗电量。平均用于处理一笔交易的电费(约20美元)，可以为大约5户高收入国家的家庭供电一天。（截至2018年春季，矿工每次交易获得的总报酬略低于100美元。）   
2018年3月各矿池提供网络区块数据表  
Fizzy是保险公司AXA的一个参数保险应用程序(https:/fizzy.axa/)  

### 比特币是有限游戏，还是无限游戏？
http://www.8btc.com/201805161324  

### 大咖超链接丨尹振涛：虚拟货币的监管首先要明确它是资产
http://www.8btc.com/chaolianji-yinzhengtao

### 通货膨胀，交易费用和货币政策的加密货币政策
https://blog.ethereum.org/2016/07/27/inflation-transaction-fees-cryptocurrency-monetary-policy/  

### Scalability and Asynchronous Programming
https://docs.google.com/presentation/d/1CjD0W4l4-CwHKUvfF5Vlps76fKLEC6pIwu1a_kC_YRQ/edit#slide=id.p  
一个讲以太坊扩展性和异步编程的PPT

### 以太坊15年的入门三教程
[以太坊实践第3部分：如何在区块链上建立自己的透明银行](https://blog.ethereum.org/2015/12/07/ethereum-in-practice-part-3-how-to-build-your-own-transparent-bank-on-the-blockchain/)  
[第二篇文章介绍了如何生成由这些令牌控制的数字民主](https://blog.ethereum.org/2015/12/04/ethereum-in-practice-part-2-how-to-build-a-better-democracy-in-under-a-100-lines-of-code/)  
[第一篇文章中，我们详细介绍了如何创建一个令牌](https://blog.ethereum.org/2015/12/03/how-to-build-your-own-cryptocurrency/)  

第一篇中有Token的示范代码(不是ERC20)，比较容易读懂。该token表示股东在某个组织中的股份，最高是100%。
第二篇中是一个投票，股东的股份值代表了投票的权重，可以投票给某个地址转账以太币。
第三篇演示了投票执行合约的某个函数。

### 从零到一
http://www.doc88.com/p-0993271886880.html  http://vdisk.weibo.com/s/GZDboi2fBIag  

### Futarchy简介(预测市场)
https://blog.ethereum.org/2014/08/21/introduction-futarchy/

### 您可能没有想过的保证金和预测市场的应用
https://blog.ethereum.org/page/10/  

### 以太坊中的梅克尔(Merkle)树
https://blog.ethereum.org/2015/11/15/merkling-in-ethereum/

### 预测市场Augur
http://www.8btc.com/augur59107

### 代币分类框架：一套正确认识 token 的思维工具
https://ethfans.org/posts/the-token-classification-framework  
从五个维度对 token 进行分类  

### 引介 | 区块链上的自主身份
https://ethfans.org/posts/31973

### 王永利：区块链发展，要跳出“比特币区块链”范式
http://www.8btc.com/wang-yong-li-0523

### “电商版以太坊”CyberMiles：我们的构想与未知
https://www.leiphone.com/news/201804/05YG1SHXasUA1Slz.html

### 工信部于佳宁：“区块链+”：金融支持实体经济的新路径
http://www.8btc.com/yujianing-2

### 科普 | 为什么使用提款（Withdrawal）模式？
https://ethfans.org/posts/why-use-the-withdrawal-pattern

### 科普 | 现代经济中的货币，Part-3
https://ethfans.org/posts/money-in-modern-economy-part-3  
货币主要分为三类：通货（Currency）、银行存款（Bank Deposit）和中央银行准备金（Central Bank Reserve）。  

### 观点 | 重新发明 Google：代币就是新时代的“超链接”
https://ethfans.org/posts/building-google-for-the-economic-web-on-the-ethereum-blockchain  
有web1.0、web2.0、web3.0的对比表格

### 科普 | 小跑进入以太坊，Part-3
https://ethfans.org/posts/getting-up-to-speed-on-ethereum-part-3
预言机、预测市场、稳定币、 基本注意力代币（BAT）、如何发布列表、查找和筛选列表，如何在社区内部管理声誉

### EthFans精选 | 以太坊入门清单
https://ethfans.org/posts/1099

### PPT | 以太坊台北分片研讨会：安全模式机制设计
https://ethfans.org/posts/taipei-sharding-workshop-security-models-in-mechanism-design

### 引介 | 预言机：让智能合约起飞
https://ethfans.org/posts/oracles-help-smart-contracts-resolve-subjective-events  
预言机（Oracles）将会是 2018 年最重大的基础设施发明

### 干货 | 智能合约开发简介
https://ethfans.org/posts/introduction-smart-contract-development
里面有个简单的例子：收益被自动均分给数个股东地址。使用了Remix、web3.js、Mist等四种方式部署合约。

### 解读 | 基于智能合约的去中心化基金设计方案
https://ethfans.org/posts/1064  

### 教程 | 以太坊开发演练， Part-3：安全性、限制性以及一些顾虑
https://ethfans.org/posts/ethereum-development-walkthrough-part-3  
三部分教程的最后一部，里面有个“角力游戏”的例子  

### 巴比特智库丨时戳资本：Token经济研究报告
http://www.8btc.com/blockchain-research-report-series04  
token的分类、一些ETH的表格和图表、部分经济学内容（如收入的三次分配）

### 三大去中心化储存Sia 、Storj、MaidSAFE
http://www.sohu.com/a/139805820_325319  
提到了IPFS，但认为IPFS与上述三者有显著不同  

### 观点 | 加密货币协议会变胖还是变瘦？
https://ethfans.org/posts/will-cryptocurrency-protocols-be-fat-or-thin  
对于胖协议的示意图有所增强，解释了协议变胖的原因; 竞争壁垒；[价值创造与价值获取之间几乎没有关系](https://medium.com/evergreen-business-weekly/why-value-capture-is-the-most-important-business-idea-you-haven-t-read-enough-about-c035c657d091)  

### 干货 | 零知识证明：抛砖引玉，Part-2
https://ethfans.org/posts/zero-knowledge-proofs-an-illustrated-primer-part-2

### 观点 | 没有“胖协议”这回事
https://ethfans.org/posts/blockchains-industrialise-trust  
逻辑和价值都储存在 EVM 上、数据储存在蜂群（Swarm）协议中，信息储存在耳语（Whisper）协议中。  
（区块链）商品化的步伐取决于可扩展性和互操作性。  
Ether 的市场价值差不多是 300亿美元（编者注：文章是在 2017年10月发表的），而所有代币的市场价值大概是 70亿美元。  
Ether（以太币）的内在价值取决于可扩展性和互操作性  

### 观点 | 区块链：将信任工业化
https://ethfans.org/posts/blockchains-industrialise-trust  
区块链是信任机器。区块链是三方协议的平台，将能源密集型（energy-intensive）的计算转化为有经济意义的信任关系。  
威廉姆森的方法澄清了：区块链并非无需信任的。相反，它们乃是 信任机器，而它们的使用将构成 信任的工业化。机会主义成本会阻碍交易的发生，而区块链跨越了它们。  

### 观点 | Vitalik：去中心化的意涵（V神出品）
https://ethfans.org/posts/the-meaning-of-decentralization  
![](http://upyun-assets.ethfans.org/uploads/photo/image/17a9d626353b4108b506b42a312781ff.png)  

### 干货 | 为你的以太坊应用程序设计架构
https://ethfans.org/posts/designing-the-architecture-for-your-ethereum-application  
以太坊应用程序是serverless的，介绍了客户端、服务器、区块链之间的调用关系和典型实现。

### 观点 | 去中心化区块链预言机, Part-1
https://ethfans.org/posts/on-decentralization-of-blockchain-oracles  
Oraclize 是在2015年第一次提出的，上述第二种方式的实现系统。从那以后，其他玩家（最著名的是微软）采用了类似的方式验证这个项目。Oraclize 作为世界上最广泛应用的区块链预言机服务，每天为测试（从2015年投入使用以来，共处理数百万个请求）和产品（从2015年投入使用以来，共处理超过40万个请求）环境按需提供数据。  

### 观点 | 为什么要用区块链代替数据库？
https://ethfans.org/posts/why-use-the-blockchain-instead-of-a-database-what-gives-tokens-value  
基本上，区块链体现了很多博弈论以及激励模型。  
不可变性、安全性、冗余性、降低费用/成本、问责/透明度  
通常有几类代币，每类有不同的价值
代币分类：
货币代币——比特币，门罗币，源石币等  
实用代币——允许您在网络中使用或执行一个行为的代币，例如ETH，ZRX。在以太坊网络中，您需要花费Ether（又名：gas）来运行智能合约，等  
资产代币——代表实际资产或产品的代币  
权益代币——像股份一样代币，能为您提供某种投票或共识参与的权利  

### 教程 | 剖析ERC721——了解非同质以太坊代币
https://ethfans.org/posts/the-anatomy-of-erc721  

### 教程 | 【Ethereum 智能合约开发笔记】使用 Infura 和 web3.js 呼叫合约
https://ethfans.org/posts/call-smart-contract-with-infura-2018-2-7    
申请infura API-KEY，使用curl发出调用：curl https://mainnet.infura.io/<your-api-key> ...  

### 观点 | 当我们说“区块链是无需信任的”，我们的意思是
https://ethfans.org/posts/what-do-we-mean-by-blockchains-are-trustless  
当我们说区块链是“无需信任的”，我们的意思是：有一个机制使得系统中的所有参与者都可以对什么是一贯的事实形成一个共识。权力和信任在网络的股东（例如：开发者、矿工、消费者）之间是分布式的（或者说：被共享的），而不是集中在单个个体或说实体（例如：银行、政府、或者金融机构）上的。

也许，描述区块链的一种更准确的方式，不是“无需信任”这样的，而是：它建立在分散化信任的基础上：我们是在信任集合中的每一个人。  

### 干货 | 公有链的基本挑战: Part 1
https://ethfans.org/posts/fundamental-challenges-with-public-blockchains-part-1  
谈到了关于如何保护隐私、POW的不可持续、分片  

### 观点 | Cent：收益无处不在
https://ethfans.org/posts/cent-income-from-anywhere  

社交网络并非真正的社交网络，而是内容网络。

我们意识到，奖励金的核心其实是以物质刺激行为。具体来说，我们赏金合约开始应用于三类行为：回答、创作和反应。回答问题、创作自定义内容和对某人的项目/音乐/视频做出反应，似乎为人们在这些方面发布物质奖赏提供了足够的价值。

### 教程 | 如何在Ethereum上编写自己的CryptoKitties风格的游戏
https://ethfans.org/speedx/articles/how-to-code-your-own-cryptokitties-style-game-on-ethereum  
ERC-721: Non-Fungible Tokens(非可互换代币)  
以太猫的形象（图像）并没有存储在以太坊上。  

### 科普 | 了解区块链基本原理的第二节：工作量证明和权益证明
https://ethfans.org/posts/understanding-blockchain-fundamentals-part-2  
里面有个图解释了pow的不可篡改性，还有个图解释了pow电力消耗超过大多数非洲国家    

### 干货 | 代币支付的以太坊智能服务
https://ethfans.org/posts/ethereum-smart-service-payment-with-tokens  
文章解释了如何实现一个收费服务（收代币）智能合约是如何实现的，收代币比收以太币麻烦  

### 干货 | 区块链经济学：制度加密经济学入门指南
https://ethfans.org/posts/the-blockchain-economy-a-beginners-guide-to-institutional-cryptoeconomics  
人们对事实及其变化达成一致（即对账本内容达成共识，以及对账本的精确性充分信任）是市场资本主义的基石。  
钞票的价值取决于社会对货币及作为其发行主体的政府的共识。  
区块链是一种制度技术。和政府及公司不同的是，区块链是一种维护账本的新型方式，即协作性经济活动。  

### 加密经济学: 区块链技术前景之路基
https://ethfans.org/zzzhang/articles/561  
加密经济学（cryptoeconomics）综合自密码学、计算机网络和博弈论（它为安全体系提供一些经济激励/反激励集合的展示）。  
里面有各个矿池所占比例  

### 干货 | 什么是加密经济学？ 初学者终极指南
https://ethfans.org/ajian1984/articles/739  
文章中有对比特币原理的简述，比较精辟：  
- 它是基于区块链技术而产生的货币。其中，每个区块都包含前一个区块的哈希值，从而形成一条连续链。  
- 每个区块都包含多笔交易。  
- 新产生的交易会使所有区块的特定状态得以更新。例如，如果A有50个比特币，且想把其中的20个比特币发送给B，那么在新的状态下就会显示：A只剩下30个比特币，而B拥有20个新的比特币。  
- 区块链必须是不可变的。只可能新增区块，而不可篡改旧的区块。  
- 仅允许有效交易。  
- 区块链应当是可下载的，任何人在任何地点都可以轻松接入并查询某笔特定的交易。  
- 如果支付了足够高的交易费用，则交易可以被快速添加至区块链上。  
#### 对哈希函数的描述
- **确定性**：无论在同一个哈希函数中解析多少次，输入同一个A总是能得到相同的输出h(A)。  
- **高效运算**：计算哈希值的过程是高效的。  
- **抗原像攻击（隐匿性）**：对一个给定的输出结果h(A)，想要逆推出输入A，在计算上是不可行的。  
- **抗碰撞性（抗弱碰撞性）**：对任何给定的A和B，找到满足B≠A且h(A)=h(B)的B，在计算上是不可行的。  
- **细微变化影响**：任何输入端的细微变化都会对哈希函数的输出结果产生剧烈影响。  
- **谜题友好性**：对任意给定的Hash码Y和输入值x而言，找到一个满足h(k|x)=Y的k值在计算上是不可行的。  

#### 签名
可被验证的。这个签名要可以证明确实是你在纸上签名了。  
不可伪造的。没有其他人能够伪造及复制你的签名。  
不可抵赖的。如果你使用自己的签名进行签署，你就无法将其收回或声称他人代替你签名。  

#### 零知识证明
Zero Knowledge Proof, ZKP  
完整性：如果陈述属实，那么诚实的验证者能被诚实的证明者说服。  
可靠性：如果证明者不诚实，他们无法通过说谎来说服验证者相信陈述是可靠的。  
零知识：如果陈述属实，那么验证者无法得知陈述的内容是什么。  
许多基于区块链的技术都在使用Zk-Snarks。事实上，以太坊在大都会阶段就计划引入Zk-Snarks，并且将其加入以太坊的功能库。Zk-Snarks是“零知识简洁无交互知识认证”的简称，是一种在无需泄露数据本身情况下证明某些数据运算的一种零知识证明。  

以上内容可用来生成一个证明，通过对每笔交易创建一个简单的快照来验证其有效性。这足以向信息接收方证明交易的有效性，而无需泄露交易的实质内容。  

#### 区块链用到了以下两种激励组合

第一种激励组合：  

- 代币：加密货币作为奖励分配给那些活跃度高且为区块链做出贡献的参与者。  
- 特权：参与者可以获得决策权，这将给予他们收取租金的权利。例如，挖出新区块的矿工们可以成为新区块的临时决策者，将短暂地成为新区块的独裁者，并有权决定将哪些交易添加至该区块。他们可以对收录在区块内的所有交易收取手续费。  
第二种激励组合：  
- 奖励：好的参与者可以获得货币奖励，或因尽职而得到决策权。  
- 惩罚：坏的参与者必须支付货币罚款，或因作恶而丧失权利。  

（前者估计是PoW，后者估计是PoS/DPoS/PoA）

#### 区块链中的博弈论
博弈论本质上是对战略决策的研究。其核心是做对自己最有利的决策，并记住对手的决策。博弈论中一个最基本的概念是：“纳什均衡”。  

纳什均衡是一种状态。在此状态下，每个参与者的策略是对其他参与者策略的最优反应。没有一个参与者可以通过独自变换策略来增加收益。  

### 以太币供给曲线
https://ethfans.org/shaoping/articles/ether-supply  

### 观点 | 弄清加密经济学
https://ethfans.org/ajian1984/articles/773  
Gnosis 使用“荷兰式拍卖”作为其代币拍卖的模型；  预测市场Augur和Gnosis
状态通道（闪电网络）

### 零知识证明与zkSNARK
https://www.jianshu.com/p/b6a14c472cc1?from=timeline  
阿里巴巴与零知识证明  

### 观点 | 应用程序协议是更好的投资
https://ethfans.org/posts/application-protocols-are-the-better-investment-heres-why  
在胖协议中，Joel Monegro 预测区块链将轻而易举地成为捕获互联网价值的领域。他展示了在当前的互联网中 HTTP 或 TCP / IP 如何获取零价值，而 FANG（脸书、亚马逊、奈飞、谷歌）则创造了数十亿美元价值。然而，在新的“区块链”互联网中，协议占据了大部分的价值，公司却只能获得少量价值。比特币市值超过 1370 亿美元，而最有价值的比特币公司 Coinbase 只值16亿美元。

一个胖协议的图(Web 3.0价值堆栈)
![](http://upyun-assets.ethfans.org/uploads/photo/image/138eb3c4cec34a7080f9cbdb09b2bca7.png)  

### 区块链与数字身份：uport、Civic、Evernym、AirPlatform、Indy、SelfKey
https://www.jianshu.com/p/fe1807af171f  

### [干货 | 加密经济学应用的机制设计，Part-1](https://ethfans.org/posts/a-crash-course-in-mechanism-design-for-cryptoeconomic-applications-part-1)

#### 什么是机制设计（Mechanism Design）

我们可以将机制设计想象成一种反向博弈论。在博弈论中，我们将博弈过程视为给定的，并分析参与者能获得的效益。在机制设计中，我们先定义理想的结果，然后倒推回去创建博弈过程，以激励手段引导参与者走向设计好的结果。另一种简单的理解，可以将博弈论和机制设计视为同一枚硬币的正反面。

### [区块链知识体系整理](https://ethfans.org/posts/blockchain-knowledge-system)
区块链应用的分类，中文文章列表  

### [WalletConnect，手机钱包和网页DAPP之间的桥梁协议](https://underplay.me/orange/p/79)
电脑浏览器访问DAPP，需要授权就弹出二维码，手机钱包扫码授权  

### [YOURS，基于BCH的内容激励平台](https://underplay.me/orange/p/66)

### [Dtube想成为区块链版Youtube，但最有意思的却是它的开发方式](https://underplay.me/orange/p/65)
Dtube 的底层应用的是 steemit + IPFS。

### [有关基本注意力代币和广告的一些想法](https://www.jianshu.com/p/a454a946e115)
几周前，基本注意力代币（Basic Attention Token，以下简称为 BAT）在 30 秒内募集了 3500 万美元。  
BAT 的解决方案既大胆又简单。他们提出以浏览器作为中立方取代媒体来衡量注意力（以他们的 Brave 浏览器作为标准的实施者，但未来可以成为插件／扩展件）。然后，有趣的地方是，把注意力转化成具有实际价值的「代币」，可以直接在广告主和媒体之间进行交易。  

### [Curation Markets 的简明介绍及其意义](https://underplay.me/orange/p/38)
curation markets是信息流（朋友圈、微博、头条等）排序机制。  
另一篇：[今日头条和微信不能解决的问题，就是区块链的机会](https://underplay.me/orange/p/56)  

另一篇：[“排序”机制：区块链原生应用独有的创新设计](https://underplay.me/orange/p/43)  
介绍了[Cent](https://underplay.me/orange/p/32)。 Cent 还有另一个独特的用户角色：排序者。排序者不回答问题，但同样有机会获得 eth 币。    
再一篇：[Cent，一个去中心化的知乎，但它的野心远不止于“问答”](https://underplay.me/orange/p/32)  

### [专门针对非技术人员的“智能合约”科普](https://mp.weixin.qq.com/s/CoUWeUVf2smgRDEvJgWYjA)
![](https://mmbiz.qpic.cn/mmbiz_png/fDdiawLicfiaa1MqPaF2wib22308ibUflXK5mP8ibTzGRdVqCW91eLgrj3ND9cxiaKHTpUiaydupnibvkcib3gsUnFFaibr3Q/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1)

### [央视《对话》：区块链是互联网的第二个时代](http://www.8btc.com/cctv-dialogue-blockchain)
“区块链是互联网的第二个时代”  
“区块链的价值是互联网的十倍”  
“区块链是制造信任的机器”  
以前是信息互联网，现在是价值互联网。  
区块链就是把伟大互联网公司平台的核心能力下沉，把它变成共享的基础设施，所有的这些能力下沉以后，包括所中心化的身份，包括支付等等核心能力，都变成大家共建共享的共有一个能力，有了这样的新基础以后，所有人都可以重新回到同一起跑线上，因此区块链可以创造出一个比互联网规模还要做大十倍甚至再大一百倍的新蓝海。  
第一，区块链是信息革命的拐点；第二，区块链是数字经济的基石；第三，区块链是新一代互联网的战略支撑型技术；第四，区块链是用一种自证清白的方式建立一种去中介化的信任机制。  

### [干货 | 以太坊可更新智能合约研究与开发综述](https://ethfans.org/posts/ethereum-upgradeable-smart-contract-strategies)

### [GSI条码，中国物品编码中心](http://www.ancc.org.cn/Service/queryTools/External.aspx)
目前，国际物品编码协会（GS1）已将690至697之间的前缀码分配给中国物品编码中心使用，通常以这些前缀码开始的厂商识别代码都是由中国物品编码中心负责分配和管理的；以其他前缀码开始的则由国外GS1成员组织负责，一般称为"国外条码"

### [鲸准研究院丨区块链垂直行业报告-溯源.pdf](file:///C:/Users/wbwang/Desktop/%E5%8C%BA%E5%9D%97%E9%93%BE/%E5%8F%82%E8%80%83/%E9%B2%B8%E5%87%86%E7%A0%94%E7%A9%B6%E9%99%A2%E4%B8%A8%E5%8C%BA%E5%9D%97%E9%93%BE%E5%9E%82%E7%9B%B4%E8%A1%8C%E4%B8%9A%E6%8A%A5%E5%91%8A-%E6%BA%AF%E6%BA%90.pdf)

### [Userfeeds: 为什么网络需要一套全新的信息排名系统](https://ethfans.org/posts/471)
“您的注意力可以通过广告宣传立即换成美元，您留下的数据可以改善很多类似Facebook这样的平台，但因浏览低质量信息而产生的成本却仍将由您承担，而且其潜在后果往往会被隐藏或延迟。除“注意力供应商”（如：用户）外，每个人都会从中获利。网站平台可从中获取有用数据，内容制作商可以增加网站的访客人数和业务量，而这两者都能立即营利。然而，用户浏览低质量内容（此类内容的目的在于通过调动用户的情绪，确认他们以前的信仰，最后引发愤怒）可以获得短暂的多巴胺（一种可传导兴奋的激素），但却不能辨别出与之相关的长期机会成本。在一个早期的信息社会里，我们仍然不能认识到让带有敌对动机的人无成本地将图像和想法强加到我们的大脑中是非常危险的。”

### [用户付费得到了资助！以下是我们计划如何将“游戏中的皮肤”带回发现算法。](https://blog.userfeeds.io/userfeeds-got-funded-heres-how-we-plan-to-bring-skin-in-the-game-back-to-discovery-algorithms-71f7afcb886d)
随着信息来源的迅速增长和免费数字分发，人类的关注成为网络经济中最为稀缺和最受欢迎的资产。  

全球关注流量的聚合和控制是排名第一的在线业务，因为随时注意流量的地方都是金钱。谷歌或Facebook等公司价值数十亿美元的估值是因为它们吸引，包装和出售美元注意力的能力。

### [gitcoinco/ethavatar](https://github.com/gitcoinco/ethavatar)
将以太坊地址与头像绑定

### [独家专访Cent.co创始人](http://www.moderntreatise.com/business/2017/9/6/exculusive-interview-with-the-founders-of-centco)

### [内容 信息与知识](http://m.jrj.com.cn/rss/xiaozhi/2017/2/26/22105400.shtml)

### [Quora +以太坊= Cent.co〜这是我的想法](https://steemit.com/cryptocurrency/@kaigani/quora-ethereum-cent-co-here-are-my-thoughts)
提出了cent还应考虑用户信誉,如让用户先回答低级问题

### [群体智慧,算法和预测市场 （上）](https://www.jianshu.com/p/09d21432d9d4)
“靠谱度加权”（believability-weighted）

### [Merculet深度分析--注意力经济与首席增长官](https://www.jianshu.com/p/4bab53a9afa0)
在Thomas H.Davenport《Attention Economy (注意力经济)》一书中，给出过关于注意力的定义：注意力是对某条特定信息的精神集中。  

### [干货 | 温和的加密货币大师：尼克·萨博，Part-1](https://ethfans.org/posts/the-quiet-master-of-cryptocurrency-nick-szabo)
货币：交换媒介、收藏品（collectibles）、稀缺性。  
干代码就是基于计算机的编码，而湿代码是要人脑理解的，像那些像法律条文。智能合约就是把湿代码转换成干代码在区块链上执行，这样就不能篡改。    
财产法和合同法是现代商业社会的两大基石。  
加密货币和区块链用“肥协议”（胖协议）交换稀缺资源，并把数据保留在协议层。  
发觉金子值钱不是因为金子有什么奇妙的属性，而是因为它不可伪造的奢侈性（Unforgeable Costliness），因为它自然的信任最小化的稀缺性，即你不需要相信任何人去保证这种稀缺性。  
“邓巴数字”，由英国牛津大学的人类学家罗宾·邓巴（Robin Dunbar）在20世纪90年代提出。该定律根据猿猴的智力与社交网络推断出：人类智力将允许人类拥有稳定社交网络的人数是148人，四舍五入大约是150人。  

### steem白皮书
[part 2](https://biweilai.com/posts/747)
Steem致力于通过加密货币奖励，将自身价值的大部分，回馈给社区价值贡献者，以此助益社交媒体和在线社区；  
Steem有一些关键设计原则。最重要原则是，每一个对该项目做出贡献的人，应按比例获得所有权，支付款项或债务，这个原则也适用于所有初创公司的创始及随后融资阶段中的股份分配过程。  
第二个原则是，所有形式的资源（capital）都同样具有价值。这意味着，**投入稀缺时间和精力生产和策划内容的人，与投入稀缺资金的人同样具有价值**。这是**汗水公平原则**（[sweat equity principle](http://www.investopedia.com/terms/s/sweatequity.asp)），这也是一个在理解加密货币之前，让很多人困惑的概念。

[part 3](https://biweilai.com/posts/749)  
Steem选择奖励那些对一篇文章的全部推进（promotion）做出最大化贡献的人，并以内容创建者所获最终奖励一定比例奖励那些投票者。  

[part 4](https://biweilai.com/posts/1198)
一个社区可提供以下两项以吸引资本（capital）：债务（debt）和所有权。  
购买了所有权的人，当社区获得成长时，他们将获利，当社区收缩，他们则遭受损失。

购买了债务的人，其一定数额的利润可得到保证，但无法分享随社区成长所带来的利润实现。

### steem白皮书的一个中文翻译([tongxiaofeng/steem-cn]https://github.com/tongxiaofeng/steem-cn)
翻译的质量一般，但完整。[这个链接](file:///E:/chrome-downloads/steemwhitepaper-cn-v2%20(1).pdf)是那个完整翻译。

### [EOS 代币模型和资源使用](https://biweilai.com/posts/4888)
EOS的代币模型比以太币复杂多了。EOS将资源（带宽和磁盘、CPU、内存）进行了细分，并用代币标识。有点像多人合资买房，然后根据股份确定房子如何分享。

### [EOS ：为商用分布式应用设计的一款区块链操作系统](https://biweilai.com/posts/2770)
不同于以太坊，EOS对用户进行了区分：开发者和消费者。开发者支付交易费，消费者免费。   
EOS模仿了邮件系统，邮件写链。  
有几个链接，如白皮书（英文）、官网、博客、推特等  

### [区块链公司TaTaTu融资5.75亿美元](http://www.8btc.com/575-million-ico-royal-backing-crazy-might-real)
[官网](https://tatatu.com/)  TaTaTu是一家通过观看在线内容、分享照片和视频来获取token的区块链社交娱乐公司。  

### Telegram 基于区块链的即时消息
融资仅次于EOS   
[最大ICO项目Telegram遭俄罗斯封杀，抗议纸飞机能飞多远？](http://www.8btc.com/telegram-and-paper-plane)  

### [BM：去中心化的区块链治理，EOS有办法](http://www.8btc.com/decentralized-governance)
以太坊的“影子政府”通过硬分叉挽回了the DAO攻击的损失。当软件更新中出现一次计划意外的分叉时，比特币矿池能够投票决定支持哪一个分叉。以太坊基金会用商标法来定义交易所应该上线的官方链。隔离见证（Segwit）之所以被接受，是因为在一次社区领导人的会议上，他们就一项妥协方案进行了投票，该方案包括扩大区块容量，但后来由于该项计划已经开始逐步推出的计划，这个妥协方案才最终作罢。  

### [走进EOS的存储系统](http://www.8btc.com/eos-storage-mechanism)
IPFS、EOS存储代币TOK。EOS的文件存储在21个超级节点上，每个节点存一个副本。这要求EOS的超级节点必须是一个云数据中心才行。
TOK每年增发5%，即5%的贬值率，相当于利息付给矿工（21个）  
[EOS代码架构及分析（一）](http://www.8btc.com/eos-code-architecture)  
[EOS代码架构及分析（二）](http://www.8btc.com/eos-code-architecture-2)  
[EOS代码架构及分析（三）](http://www.8btc.com/eos-code-architecture-3)  
[EOS代码架构及分析（四）](http://www.8btc.com/eos-code-architecture-4)  
讲了：传统合约->电子合约->智能合约的演化

### [【巴比特每日热聊榜】观点：EOS不算真正的区块链](http://www.8btc.com/p218875)
画了多张图解释UTXO、p2p网络等  

### 爆炒区块链3.0概念，EOS想超ETH（以太坊），没那么简单！
Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分协议，知识产权等。  
![](http://p3.pstatp.com/large/pgc-image/152133435442911e4520f48)  

### [EOS与以太坊对比分析(上篇)](http://www.8btc.com/eos-vs-ethereum)
在比特币发展的这几年间，已经有不少基于公开账本的区块链技术的去中心化的应用落地。这些应用包括：加密信息应用(Bitmessage)，去中心化交易所(Bitshares)，博彩赌博(Peerplays)，云计算(Golem)，以及社交媒体(Steem/Steemit)。  
从本质上讲，区块链是一个账目公开的去中心化系统。  
（这个文章作为区块链入门不错，解释的很清楚易懂）
### [Vitalik Buterin：以太坊余下四分之一的隐私问题，要用这四种方案解决](http://www.sohu.com/a/208489648_747927)
 解决方案之一：通道(Channels)。 Cent就是链上与链下相结合。链上只有金额等，细节在链下。  
 解决方案之二：混合器（Mixers）。交易所的撮合系统可以视为一种混合器。Coin Join智能合约是一个专门的以太坊混合器。  
 解决方案之三：环签名（Ring Signature）。你仅能证明你的签名存在于这组环签名之中，不能证明确切哪个是你的的签名。  
 解决方案之四：零知识证明（Zero knowledge proofs）。上述的环签名技术为一种弱化的零知识证明。缺点：其一，它需要建立信任的设置，如果在用户所在的群里没有建立起信任设置，就无法建立零知识证明。其二，生成证明效率低。但在明年的升级中，Zcash能够将生成证明的效率从近四十秒削减到七秒。  

### [微软亚洲研究院闫莺：以太坊的性能与隐私保护如何兼得？](http://tech.sina.com.cn/roll/2017-03-25/doc-ifycspxn9867046.shtml)
![](http://n.sinaimg.cn/translate/20170325/1TE3-fyctevp8174547.jpg)
以太坊分层（五层）：数据、网络、共识协议、智能合约、应用

### [资管专家：回望黄金走势，比特币10年内或涨至4万美元](http://www.8btc.com/bitcoin-as-a-store-of-value)
71年放弃金本位后,黄金价格波动很大(与比特币类似). 目前加密货币的总市值为1300亿美元，约为7.5万亿美元黄金市值的2%。  

### [货币溯源：黄金才是最大的空气币？](http://www.8btc.com/foundation-of-currency)
从公元4000年前至今，从地中海到中国，上帝、君王和所有的普通老百姓，对于一种物品的价值达成了共识。这在人类历史上也是罕见的。

黄金，代表着至高无上的财富。人们从来不会怀疑这一点，就像人们曾经笃定的相信大地是宇宙的中心一样。

因为黄金本身也没有内在价值。也许你会说黄金的工业价值，但是黄金在被当做货币的前几千年里都是不用于工业的。而且它的工业价值远远低于其价格，因而在工业领域应用也较少。

### [B2 小圆桌 | 积分联盟与区块链债务](https://ethfans.org/posts/32176)
趣链，就有一个区块链积分专利。  
积分联盟是一个看起来性感，操作起来却商务成本极高的，合规区块链业务。积分联盟的本质是债务转移和结算，而这种债务转移在企业间由于积分使用率的禀赋不同而不均匀。

### [硅谷 3 点钟 | ERC721 标准的提出者，用一篇长文聊透了非同质化代币的本质](https://underplay.me/orange/p/86)
我其实就是有点像回到以前的复古时代，你要在 cd 上烧录软件的代码，然后寄出去让工厂拷贝几百万份，最后统一邮件寄给用户。(指智能合约上线后就不能改)  

当你把所有的东西都平权化，所有人都拥有平等的接入某一个东西的权利，这时每个人其实反过来是丧失了自己的个性化（这其实就是 erc20 同质化 token）。

（ERC721是为NFT(Non-Fungible Token)非同质代币所定义的一种标准,以此标准发行的代币最大的特点为每个代币属性均不相同,独一无二。）

### [比特币能源消耗指数](https://digiconomist.net/bitcoin-energy-consumption)
 关键网络统计

| 描述                                     | 值              |
| ---------------------------------------- | --------------- |
| 比特币目前估计的每年耗电量*（TWh）       | 71.12           |
| 年度全球采矿收入                         | $ 4,900,986,296 |
| 年度估计的全球采矿成本                   | $ 3,556,216,066 |
| 当前成本百分比                           | 72.56％         |
| 用电量最接近比特币的国家                 | 智利            |
| 上一天使用的电量（千瓦时）               | 194861154       |
| 每GH / s的隐含瓦数                       | 0.188           |
| PH / s的总网络散列率（1,000,000 GH / s） | 43,103.00       |
| 每次交易消耗的电量（KWh）                | 1023            |
| 可以由比特币供电的美国家庭数量           | 6585585         |
| 一次交易耗电1天的美国家庭数量            | 34.56           |
| 比特币的电力消耗占全球电力消耗的百分比   | 0.32％          |
| 年度碳足迹（二氧化碳千吨）               | 34851           |
| 每笔交易的碳足迹（千克二氧化碳）         | 501.14          |

### [Hyperledger Fabric的性能测试](https://stackoverflow.com/questions/50334489/performance-test-of-the-hyperledger-fabric/50349641#50349641)
里面有ibm的一个性能优化的文档：https://drive.google.com/file/d/1OsIoPtlv5X2PWyOAlDn1FCnHCZPyrF57/view  

### [EOS正式版技术白皮书（中文）](https://www.jianshu.com/p/f65bf7691482)

### [全国首例区块链存证判决在杭州互联网法院诞生！【附判决书】](https://mp.weixin.qq.com/s/upPNtzLBzXHFqwz8n4hwCA)

### 条形码
#### 条形码校验
13位的最后一位是校验码，校验算法：https://www.gs1hk.org/zh-cn/get-a-barcode/digit-calculator  

#### GPC（ Global Product Classification）浏览器
定义了条形码中的上品分类：https://www.gs1.org/services/gpc-browser  

#### 如何在零售商品上使用商品条码
 【应用领域】[如何在零售商品上使用商品条码——步骤一](http://www.ancc.org.cn/Application/appArticle.aspx?Id=3812)

   零售贸易项目俗称零售商品，主要是指在零售终端通过POS扫描结算的商品。一听啤酒、一瓶洗发水和一瓶护发素的组合包装都可以视为零售商品。步骤一：为不同的商品项… (2006/11/16)

 【应用领域】[如何在零售商品上使用商品条码——步骤二](http://www.ancc.org.cn/Application/appArticle.aspx?Id=3813)

   步骤二：选择相应的条码符号——应尽量选用EAN-13条码在我国，零售商品选用EAN/UPC商品条码来表示。EAN/UPC商品条码包括EAN商品条码（EAN-13和EAN-8）和UPC商品条…(2006/11/16)

 【应用领域】[如何在零售商品上使用商品条码——步骤三](http://www.ancc.org.cn/Application/appArticle.aspx?Id=3814)

   步骤三：条码符号的设计——条码的尺寸EAN/UPC条码符号的放大系数一般在0.80～2.00的范围内选择。条码符号随放大系数的变化而放大或缩小。具体尺寸要求见GB 12904… (2006/11/16)

 【应用领域】[如何在零售商品上使用商品条码——步骤四](http://www.ancc.org.cn/Application/appArticle.aspx?Id=3816)

   步骤四：条码符号的印制——到获得商品条码印刷资质的印刷企业印制条码EAN/UPC条码符号质量合格是POS商店实现商品准确、快速扫描结算的先决条件，条码符号质量的好… (2006/11/16)

 【应用领域】[如何在零售商品上使用商品条码](http://www.ancc.org.cn/Application/appArticle.aspx?Id=842)

### [数据同步实现全球商品互联互通](http://www.cqn.com.cn/news/zjpd/wpbm/zxdt/1010277.html)
里面有对GPC的中文解释：  
![](http://www.cqn.com.cn/Upload/2015-03-02-10-40-33.jpg)  

### [质量码打印说明](https://github.com/wbwangk/wbwangk.github.io/blob/master/Docs/buybos/%E8%B4%A8%E9%87%8F%E7%A0%81%E6%89%93%E5%8D%B0%E8%AF%B4%E6%98%8E.md)

### [美国国会加密货币声音丨比特币是现代数字黄金，不能因“草率监管”而错失加密货币良机](http://www.8btc.com/cftc-official-to-congress-dont-be-hasty-with-crypto-rules)
前CFTC主席Gensler对这个问题作出了一个回应，他说：“黄金背后也没有任何东西。它背后的是一种文化规范，几千年来我们都喜欢黄金。”  
“我们把黄金当作一种价值储存手段，所以比特币是一种现代形式的数字黄金。这是一种社会建构，”他继续说道。

### [马千里：回答出这三个问题，你和区块链就算“三观合”](http://www.8btc.com/values_application_blockchain)
生产力应用、生产关系应用  
![](http://cdn.8btc.com/wp-content/uploads/2018/07/201807190439536403.jpg)  
