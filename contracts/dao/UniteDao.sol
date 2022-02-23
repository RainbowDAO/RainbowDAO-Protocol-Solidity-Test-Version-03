//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract UniteDao {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private uniteDao;

    function getMemberLength() public view returns (uint256) {
        return uniteDao.length();
    }

    function addMember(address _member) public {
        uniteDao.add(_member);
    }

    function getMember(uint index) public view returns (address){
        return uniteDao.at(index);
    }

    function removeMember(address _member) public {
        uniteDao.remove(_member);
    }

}
