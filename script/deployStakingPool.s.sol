// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/StakingPool.sol"; // Adjust the path to your StakingPool contract

contract DeployStakingPool is Script {
    function run() external {
        vm.startBroadcast();

        address keyGenerator = 0x706af33e754D8d3647eA3ED45751111FbC2305E1;
        address withdrawal = 0x706af33e754D8d3647eA3ED45751111FbC2305E1;
        uint256[] memory operatorIds = new uint256[](4);
        operatorIds[0] = 7;
        operatorIds[1] = 33;
        operatorIds[2] = 34;
        operatorIds[3] = 39;

        // goerli V4 addresses
        address depositAddress = 0xff50ed3d0ec03ac01d4c79aad74928bff48a7b2b;
        address ssvNetworkContract = 0xAfdb141Dd99b5a101065f40e3D7636262dce65b3;
        address ssvTokenAddress = 0x3a9f01091C446bdE031E39ea8354647AFef091E7;

        StakingPool stakingPool = new StakingPool(
            keyGenerator,
            depositAddress,
            withdrawal,
            ssvNetworkContract,
            ssvTokenAddress,
            operatorIds
        );

        console.log("StakingPool deployed to:", address(stakingPool));

        vm.stopBroadcast();
    }
}
