const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Dao", function() {
  it("Should return the new greeting once it's changed", async function() {
    const dao = await cteateDao();
    console.log(dao);
    // const setGreetingTx = await dao.setFather("0x4182D8431e74a5BD044244D1EddA5BbB8583E4F0");
    //
    // wait until the transaction is mined
    // await setGreetingTx.wait();
    // console.log(await baseDao.father());
    //
    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});

async function cteateDao() {
  const Dao = await ethers.getContractFactory("Dao");
  const dao = await Dao.deploy();
  await dao.deployed();
  return dao;
}
