//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract BaseDao {
    using EnumerableSet for EnumerableSet.AddressSet;
    /**
    * 父级别Dao
    */
    address public father;
    /**
    *会员Set
    */
    EnumerableSet.AddressSet private member;

    /**
    * 设置父级
    */
    function setFather(address _father) public {
        father = _father;
    }
    /*
    *获取会员长度
    */
    function getMemberLength() public view returns (uint256) {
        return member.length();
    }
    /**
    * 添加会员
    */
    function addMember(address _member) public {
        member.add(_member);
    }
    /**
   * 获取会员
   */
    function getMember(uint index) public view returns (address){
        member.at(index);
    }
    /**
    * 移除会员
    */
    function removeMember(address _member) public {
        member.remove(_member);
    }
}
