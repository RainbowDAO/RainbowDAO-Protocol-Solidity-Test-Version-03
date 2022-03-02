pragma solidity ^0.8.0;

import "../dao/Dao.sol";
import "hardhat/console.sol";

contract Router {
    mapping(string => address) public getDao;

    function createDao(string memory name, string memory abname, string memory info, string memory logo, address erc20) public {
        Dao dao = new Dao(name, abname, info, logo, erc20);
        getDao[name] = address(dao);
    }

    function setDao(){

    }

    function joinDao(string memory name){
        Dao(getDao[name]).addMember(msg.sender);

    }

    function joinDao2(address _address){
        Dao(_address).addMember(msg.sender);
    }
}
