const {expect} = require("chai");
const {ethers} = require("hardhat");
const {getDao} = require("../untils/Dao");

const name = "RainbowTest Dao";
const abname = "RbDao";
const info = "Rainbow Test Dao";
const logo = "https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png";
const erc20 = "0x73f8fc2e74302eb2efda125a326655acf0dc2d1b";

describe("CreateDao", function () {
    it("Should return the new greeting once it's changed", async function () {
        const dao = await getDao(name, abname, info, logo, erc20);
        console.log(dao);
    });
});
