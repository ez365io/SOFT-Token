var Token = artifacts.require("SoftToken");

var TokenName = "SOFTcoin";
var Symbol = "SOFT";
var TokenSupply = 200000000;
var Decimals = 18;

var TokenBuffer = 0;


expect = require("chai").expect;

var totalSupply;

var owner;

contract("Token contract", function(accounts){

  describe("Check SC instance", function(){
    it("catch an instance of tokenContract", function(){
      return Token.deployed().then(function(instance){
        TokenInstance = instance;
        console.log("tokenContract = " + TokenInstance.address);
      });
    });
    it("Saving totalSupply", function(){
      return TokenInstance.totalSupply().then(function(res){
        console.log("totalSupply = " + res.toString());
        totalSupply = res.toString();
        expect(res.toString()).to.be.equal(("200000000000000000000000000"));
      });
    });
  });

  describe ("Check initial parameters", function () {
    it ("Check Token name", function(){
      return TokenInstance.name.call().then(function(res){
        console.log("Token name = " + res.toString());
        expect(res.toString()).to.be.equal(TokenName);
      })
    })
    it ("Check Token Symbol", function(){
      return TokenInstance.symbol.call().then(function(res){
        console.log("Token Symbol = " + res.toString());
        expect(res.toString()).to.be.equal(Symbol);
      })
    })
    it ("check Token Decimals", function(){
      return TokenInstance.decimals.call().then(function(res){
        console.log("Token decimals = " + res.toString());
        expect(parseInt(res.toString())).to.be.equal(Decimals);
      })
    })
  })

  describe ("Get tokenHolders addresses", function() {
    it ("check owner address", function(){
      return TokenInstance.owner.call().then(function(res){
        console.log("owner = "+ res.toString());
        owner = res.toString();
      })
    })
  })




  describe ("Check initial balances", function(){
    it ("check owner balance", function(){
      return TokenInstance.balanceOf(owner).then(function(res){
        console.log(res.toString());
        console.log(totalSupply);
        expect(res.toString()).to.be.equal(("200000000000000000000000000"));
      });
    });
  });

  describe ("Check function transfer", function (){
    it ("check owner possibility to transfer tokens", async function(){
	  var accounts =  await web3.eth.getAccounts();
      return TokenInstance.transfer(accounts[2], 100, {from: accounts[0]}).then(function(res){
        expect(res.toString()).to.not.be.an("error");
      })
    })
  })
})