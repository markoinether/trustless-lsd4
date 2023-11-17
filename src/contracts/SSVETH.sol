//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./StakingPool.sol";
contract SSVETH is ERC20, Ownable {
    address public minter;
    uint256 public sharePrice = 1e18;
    StakingPool public stakingPool;
    
    constructor() ERC20("decentralize staking with ssv", "ssvETH") Ownable(address(stakingPool)) {
        minter = msg.sender;
    }


    function mint(address recipient, uint256 amount) external onlyOwner {
        _mint(recipient, amount);
    }

    function changeSharePrice(uint256 new_price) external onlyOwner {
        sharePrice = new_price;
    }
}
