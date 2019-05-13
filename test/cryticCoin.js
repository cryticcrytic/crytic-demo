const CryticCoin = artifacts.require("CryticCoin");

contract("CryticCoin", accounts => {
  it("should put 0 CryticCoin in the first account", () =>
    CryticCoin.deployed()
      .then(instance => instance.balanceOf.call(accounts[0]))
      .then(balance => {
        assert.equal(
          balance.valueOf(),
          0,
          "The initial account tokens"
        );
      }));


});
