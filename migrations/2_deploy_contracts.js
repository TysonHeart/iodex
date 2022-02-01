const pool = artifacts.require("TokenPairPool");
const factory = artifacts.require("PoolFactory");

module.exports = async function (deployer) {
    // await deployer.deploy(pool);
    // const t1 = await pool.deployed()

    // await deployer.deploy(factory, t1.address);
    // const t2 = await factory.deployed()

    deployer.deploy(pool)
        .then((_instance) => {
            console.log(_instance.address)
            return deployer.deploy(factory, _instance.address)
        });
};
