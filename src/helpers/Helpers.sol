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

    function encode(
        string memory _string1,
        uint _uint,
        string memory _string2
    ) public pure returns (bytes memory) {
        return (abi.encode(_string1, _uint, _string2));
    }

    function decode(
        bytes memory data
    )
        public
        pure
        returns (string memory _str1, uint _number, string memory _str2)
    {
        (_str1, _number, _str2) = abi.decode(data, (string, uint, string));
    }
}
