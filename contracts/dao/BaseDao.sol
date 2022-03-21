//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract BaseDao {

    string public name;
    string public  abname;
    string public info;
    string public  logo;
    address public erc20;
    address public admin;

    constructor(string memory _name, string memory _abname, string memory _info, string memory _logo, address _erc20){
        name = _name;
        abname = _abname;
        info = _info;
        logo = _logo;
        erc20 = _erc20;
    }
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

    function setAdmin(address _address) public{
        admin = _address;
    }
}
