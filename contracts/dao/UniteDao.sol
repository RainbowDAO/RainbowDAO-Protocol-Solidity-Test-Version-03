//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract UniteDao {
    using EnumerableSet for EnumerableSet.AddressSet;
    //联合Dao
    EnumerableSet.AddressSet private uniteDao;
    /*
     *获取会员长度
     */
    function getMemberLength() public view returns (uint256) {
        return uniteDao.length();
    }
    /**
    * 添加会员
    */
    function addMember(address _member) public {
        uniteDao.add(_member);
    }
    /**
   * 获取会员
   */
    function getMember(uint index) public view returns (address){
        return uniteDao.at(index);
    }
    /**
    * 移除会员
    */
    function removeMember(address _member) public {
        uniteDao.remove(_member);
    }

}
