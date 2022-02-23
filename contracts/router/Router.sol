pragma solidity ^0.8.0;

import "../dao/Dao.sol";

contract Router {
        /**
        *create A dao
        */
        function createDao() public{
             Dao   dao = new Dao();
        }
}
