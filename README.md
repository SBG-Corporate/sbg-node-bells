# sbg-node-bellscoin

| Version | Status | Date |
| ------- | ------ | ---- |
| 3.0.0-rc2 | [![Build Status](https://travis-ci.com/Nintondo/bellscoinV3.svg?branch=master)](https://travis-ci.com/Nintondo/bellscoinV3) | 2024-10-13 |


## How can i get the source code ?

```bash
wget https://github.com/Nintondo/bellscoinV3/releases/tag/v3.0.0-rc2
```


## How to setup node with docker ?


```bash
docker compose -f docker-compose.yml up -d --build
```


## How to setup MINING node ?

1. Download extension to get your wallet address, [download chrome extension](https://chromewebstore.google.com/detail/nintondo-wallet/akkmagafhjjjjclaejjomkeccmjhdkpa)
2. We need to configure a Mining pool configuracion

  * go to https://www.f2pool.com/user/account#tab-mining-user (create account if need)
  * add a BELLS account, [check image](./docs/mining_pool_configure_01.png)
3. Modify the bells{version}/bells.conf file with the following configuration
```bash
# Options for mainnet
[main]
# Could be use any username for the local node
rpcuser=yourworker.local.user
# Could be use any password for the local node
rpcpassword=yourworker.local.password
# Allow the node to listen on localhost
rpcallowip=127.0.0.1
# RPC port for local communication with the node
rpcport=8332
# Indicate that this node must accept RPC commands
server=1
# Execute the node as a service in the background
daemon=1
# Listen for connections on <port>
listen=1
# Disable default mining
gen=0
# Add a node to connect to and attempt to keep the connection open
addnode=ltc-euro.f2pool.com
# limit of CPU usage for mining
genproclimit=1
# mining configuration (worker_name + worker_password)
miningaddress=yourworker.name
miningpassword=123456789123456789

```
