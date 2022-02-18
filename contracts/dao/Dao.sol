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
    /*
    *获取部门长度
    */
    function getDepartmentLength() public view returns (uint256) {
        return department.length();
    }
    /**
    * 添加部门
    */
    function addDepartment(address _member) public {
        department.add(_member);
    }
    /**
   * 获取部门
   */
    function getDepartment(uint index) public view returns (address){
        return department.at(index);
    }
    /**
    * 移除部门
    */
    function removeDepartment(address _member) public {
        department.remove(_member);
    }
    /*
   *获取子Dao长度
   */
    function getChildDaoLength() public view returns (uint256) {
        return childDao.length();
    }
    /**
    * 添加子Dao
    */
    function addChildDaoMember(address _member) public {
        childDao.add(_member);
    }
    /**
   * 获取子Dao
   */
    function getChildDao(uint index) public view returns (address){
        return childDao.at(index);
    }
    /**
    * 移除子Dao
    */
    function removeChildDao(address _member) public {
        childDao.remove(_member);
    }

}
