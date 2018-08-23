// 2_deploy_contract.js

const SpaceChain = artifacts.require("./SpaceChain.sol");

module.exports = function(deployer) {
  deployer.deploy(SpaceChain);
};
