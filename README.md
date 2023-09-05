# NFTMinterRinkeby
### An NFT Minter that will mint an NFT on Rinkeby network while uploading image and metadata on IPFS

**Deployed using Heroku: https://nft-minter-rinkeby.herokuapp.com/**

_This application is made for experimental/educational purposes, please make sure you are on Rinkeby Testnet when interacting with it._


NFT Contract: https://rinkeby.etherscan.io/token/0xc1028756e014b0f9e1477ed5534e441cde2093ab

### Usage
- Connect to Rinkeby on Metamask
-  Get some ETH for gas from faucet: https://faucet.rinkeby.io/
-  Click on the `Connect MetaMask` button and authenticate yourself
-  Add `Title` and `Description`
-  Add `image`
-  Click `MINT NFT`

The image is uploaded to IPFS whose CID is used to create the `tokenURI` JSON metadata and is uploaded to IPFS, the retrieved CID from the metadata is added to the NFT. Once the transaction is confirmed you will find the transaction link and the Opensea link to the NFT below the `MINT NFT` button.
_
Metamask authentication and IPFS Upload is achieved using the Moralis API. _

To run locally: 
- Clone the repo using `git clone`
- If using VS Code install a plugin called `Live Server` and run it with `index.html`. 
- That's all folks!



