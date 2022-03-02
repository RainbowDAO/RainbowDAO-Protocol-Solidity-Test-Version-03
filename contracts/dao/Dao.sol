//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "./BaseDao.sol";
import "./UniteDao.sol";

contract Dao is BaseDao {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private department;

    EnumerableSet.AddressSet private childDao;
    UniteDao public unit = UniteDao(address(0x0));



    constructor(string memory _name, string memory _abname, string memory _info, string memory _logo, address _erc20)
    BaseDao(_name, _abname, _info, _logo, _erc20){

    }

    function isUnite() public view returns (bool){
        return address(unit) != address(0x0);
    }

    function join(address _address) public {
        addMember(_address);
    }
    modifier _checkUnite(){
        require(address(unit) != address(0x0), "Unite is not open");
        _;
    }

    function addUnite() _checkUnite public {

    }

    function addToUnite() public {

    }

    function openUnite() public {
        unit = new UniteDao();
    }

    function getDepartmentLength() public view returns (uint256) {
        return department.length();
    }

    function addDepartment(address _member) public {
        department.add(_member);
    }

    function getDepartment(uint index) public view returns (address){
        return department.at(index);
    }

    function removeDepartment(address _member) public {
        department.remove(_member);
    }

    function getChildDaoLength() public view returns (uint256) {
        return childDao.length();
    }

    function addChildDaoMember(address _member) public {
        childDao.add(_member);
    }

    function getChildDao(uint index) public view returns (address){
        return childDao.at(index);
    }

    function removeChildDao(address _member) public {
        childDao.remove(_member);
    }

}
