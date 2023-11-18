// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Helpers {
    function bytesToAddress(bytes memory b) public pure returns (address) {
        require(b.length == 32, "Invalid data length");

        uint256 numericValue;
        assembly {
            numericValue := mload(add(b, 0x20))
        }

        return address(uint160(numericValue));
    }
}
