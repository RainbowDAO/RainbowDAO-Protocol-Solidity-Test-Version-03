const {expect} = require("chai");
const {ethers} = require("hardhat");

exports.getRouter = async function getRouter() {
    const Router = await ethers.getContractFactory("Router");
    const router = await Router.deploy();
    return router;
}


