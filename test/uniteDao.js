const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("UniteDao", () => {
  it("Should return the new greeting once it's changed", async () =>{
    const Dao = await ethers.getContractFactory("UniteDao");
    const dao = await Dao.deploy();
    await dao.deployed();
    //
    // wait until the transaction is mined

    // console.log(await dao.father());
    //
    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});