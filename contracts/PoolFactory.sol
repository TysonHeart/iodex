// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './PoolProxy.sol';

contract PoolFactory {

    address public logicContract;
    mapping(address => mapping(address => address)) public pools;

    constructor(address _logicContract) {
        logicContract = _logicContract;
    }

    // Create a proxy
    // Ensure token1 and token2 are not the same
    // Ensure token1 and token2 are not 0
    // Ensure we don't already have a proxy created for the pair
    function createPoolIfNotExists(address token1, address token2) public returns (bool) {

        require(token1 != address(0));
        require(token2 != address(0));
        require(token2 != token2);

        (token1, token2) = token1 > token2 ? (token1, token2) : (token2, token1);
        address _proxyAddress = pools[token1][token2];

        // proxy does not exist
        if (_proxyAddress == address(0)) { 
            PoolProxy proxy = new PoolProxy(logicContract, token1, token2);
            pools[token1][token2] = address(proxy);
        }

        return _proxyAddress != address(0);
    }
}