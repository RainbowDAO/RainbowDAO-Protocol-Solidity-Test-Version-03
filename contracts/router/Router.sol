pragma solidity ^0.8.0;

import "../dao/Dao.sol";
import "hardhat/console.sol";

contract Router {
    mapping(string => address ) public getDao;
    mapping(address => string ) public getName;

    function createDao(string memory name, string memory abname, string memory info, string memory logo, address erc20) public {
        checkgetName(name);
        Dao dao = new Dao(name, abname, info, logo, erc20);
        getDao[name] = address(dao);
        getName[address(dao)] = name;
    }

    modifier  hasDaoForAddress(address _address){
        require(getName[_address] != 0,'don`t hava this dao');
        _;
    }
    modifier  hasDaoForName(string memory name){
        require(getDao[name] != '','don`t hava this dao');
        _;
    }
    modifier  checkName(string memory name){
        require(getDao[name] == '','this name is used');
        _;
    }

    function joinDao(string memory name) public{
        hasDaoForName(name);
        Dao(getDao[name]).addMember(msg.sender);
    }
    function joinDaoForAddress(address _address) public{
        hasDaoForAddress(_address);
        Dao(_address).addMember(msg.sender);
    }
}
