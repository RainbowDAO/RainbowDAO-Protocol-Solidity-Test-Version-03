//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./BaseDao.sol";
contract Dao is BaseDao {
    using EnumerableSet for EnumerableSet.AddressSet;
    EnumerableSet.AddressSet private department;
    EnumerableSet.AddressSet private childDao;
}
