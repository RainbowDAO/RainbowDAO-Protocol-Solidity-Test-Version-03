const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("BaseDao", function () {
  it("Should return the new greeting once it's changed", async function () {
    const BaseDao = await ethers.getContractFactory("BaseDao");
    const baseDao = await BaseDao.deploy();
    await baseDao.deployed();
    const setGreetingTx = await baseDao.setFather("0x4182D8431e74a5BD044244D1EddA5BbB8583E4F0");
    //
    // wait until the transaction is mined
    await setGreetingTx.wait();
    console.log(await baseDao.father());
    //
    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
