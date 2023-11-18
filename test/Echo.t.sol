// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "src/Echo.sol";

contract EchoTest is DSTest {
    Echo echo;
    bytes32 withdrawalCred =
        0x010000000000000000000000706af33e754d8d3647ea3ed45751111fbc2305e1;

    function setUp() public {
        echo = new Echo();
    }

    function testEchoInput() public {
        string memory input = "Hello, World!";
        string memory output = echo.echoInput(input);

        emit log("Input:");
        emit log(input);
        emit log("Output:");
        emit log(output);
    }

    function testBytes32ToAddress(
        bytes32 _bytes
    ) public pure returns (address) {
        address addrFromBytes = address(uint160(uint256(_bytes)));
        // emit log(addrFromBytes);
        // emit log_address(addrFromBytes);

        return addrFromBytes;
    }
}
