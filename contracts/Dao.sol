//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./BaseDao.sol";
import "./UniteDao.sol";

contract Dao is BaseDao {
    using EnumerableSet for EnumerableSet.AddressSet;
    //部门
    EnumerableSet.AddressSet private department;
    //子Dao
    EnumerableSet.AddressSet private childDao;
    UniteDao public unit = UniteDao(address(0x0));
    /**
    *是否是联合Dao
    */
    function isUnite() public view returns (bool){
        return address(unit) != address(0x0);
    }
    /**
    *检查是否联合Dao
    */
    modifier _checkUnite(){
        require(address(unit) != address(0x0), "Unite is not open");
        _;
    }
    function addUnite() _checkUnite public {

    }

    function addToUnite() public {

    }
    /**
    *打开联合，成为联合Dao
    */
    function openUnite() public {
        unit = new UniteDao();
    }
}
