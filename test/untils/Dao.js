const {getRouter} = require("./Router");

exports.getDao = async function (name, abname, info, logo, erc20) {
    const router = await getRouter();
    console.log(name, abname, info, logo, erc20);
    await router.createDao(name, abname, info, logo, erc20);
    return (await router.getDao(name)).toLowerCase()
}
exports.setAdmin = async function (address) {

}
