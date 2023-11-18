anvil --fork-url https://goerli.infura.io/v3/d17acbe074cb444796e86a05097f2b7f

forge script deployStakingPool.s.sol --broadcast --rpc-url $LOCALHOST_URL --private-key $ADDR_A27_0x706

source .env

forge install OpenZeppelin/openzeppelin-contracts@v4.9.0

forge remove OpenZeppelin/openzeppelin-contracts

4.8.1
