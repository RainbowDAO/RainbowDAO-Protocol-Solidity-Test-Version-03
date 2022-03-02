//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./BaseDao.sol";

contract Department is BaseDao {
    constructor(string memory _name, string memory _abname, string memory _info, string memory _logo, address _erc20)
    BaseDao(_name, _abname, _info, _logo, _erc20){

    }
}
