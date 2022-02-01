// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './TokenPairPool.sol';
import '@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol';

contract PoolProxy is ERC1967Proxy {

    constructor(address _logic, address _token1, address _token2) ERC1967Proxy(_logic, "") {
        TokenPairPool logic = TokenPairPool(_logic);
        logic.initialize(_token1, _token2);
    }
}
