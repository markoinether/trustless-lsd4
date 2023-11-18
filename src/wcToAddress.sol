//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// contract WcToAddress {
//     function(bytes32 _withdrawalCred) external returns(address) {
//         _withdrawalCred
//     }
// }

contract Example {
    function bytes32ToAddress(bytes32 _bytes) public pure returns (address) {
        return address(uint160(uint256(_bytes)));
    }
}
