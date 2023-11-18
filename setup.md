paste .env into main folder
```
anvil --fork-url https://goerli.infura.io/v3/<Key> --auto-impersonate
forge install
source .env
forge script script/deployStakingPool.s.sol --broadcast --rpc-url $LOCALHOST_URL --private-key $ADDR_A27_0x706
```
paste StakingPool address to backend/config.json "stakepool" \
send 32 eth to StakingPool address
```
cd backend
python3 main.py stake -c config.json
```
