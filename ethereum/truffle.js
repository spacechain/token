/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
	  from: "0xa446d323abc9943db47cdd1d87f6df01a68e49a6",
      network_id: "*" // Match any network id
    },
	live: {
	  host: "localhost",
	  port: 8545,
	  //gas: 6000000,
	  //gasPrice: 120000000000,
	  network_id: 1,
	  from: "0x6e1a766e792aea6e03852337a5ede9e03493ff09"
	}
  }
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
};
