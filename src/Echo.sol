// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Echo {
    function echoInput(
        string memory input
    ) public pure returns (string memory) {
        return input;
    }
}
