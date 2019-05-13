const CryticCoin = artifacts.require("CryticCoin");

module.exports = function(deployer) {
  deployer.deploy(CryticCoin);
};
