//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract BaseDao {
    using EnumerableSet for EnumerableSet.AddressSet;

    address public father;

    EnumerableSet.AddressSet private member;

    function setFather(address _father) public {
        father = _father;
    }

    function getMemberLength() public view returns (uint256) {
        return member.length();
    }

    function addMember(address _member) public {
        member.add(_member);
    }

    function getMember(uint index) public view returns (address){
        return member.at(index);
    }

    function removeMember(address _member) public {
        member.remove(_member);
    }

}
