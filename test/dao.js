const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Dao", () => {
  it("Should return the new greeting once it's changed", async function() {
    const Dao = await ethers.getContractFactory("Dao");
    const dao = await Dao.deploy();
    await dao.deployed();

    await checkUnite(dao);
    //
    // wait until the transaction is mined

    // console.log(await dao.father());
    //
    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});

async function checkUnite(dao) {
  console.log(await dao.isUnite());
  const setUniteTx = await dao.openUnite();
  await setUniteTx.wait();
  console.log(await dao.isUnite());
  console.log(await dao.unit());
}
