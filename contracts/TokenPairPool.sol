// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract TokenPairPool is Initializable {
    IERC20 public token1;
    IERC20 public token2;

    function initialize(address _token1, address _token2) public initializer {
        token1 = IERC20(_token1);
        token2 = IERC20(_token2);
    }
}
