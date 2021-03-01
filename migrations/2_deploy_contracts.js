var SOFTToken = artifacts.require("SoftToken");



module.exports = function(deployer) {
  deployer.deploy(SOFTToken)
      .then(instance =>{
        console.log(instance.address);
      });

};