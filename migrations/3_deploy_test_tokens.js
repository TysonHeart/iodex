const token = artifacts.require("Token");

module.exports = async function (deployer) {
    await deployer.deploy(token, "GISH1", "GISH1");
    const t1 = await token.deployed()

    await deployer.deploy(token, "GISH2", "GISH2");
    const t2 = await token.deployed()
};
