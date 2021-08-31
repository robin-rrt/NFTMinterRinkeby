// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTMinterRinkeby is ERC721URIStorage{
 
 uint256 _tokenID;
 
 constructor() ERC721("NFTMinterRinkeby", "NFTMR") {
    _tokenID = 0;
 } 
 
 event NFTMinted(uint256 _tokenId, address indexed NFTOwner, string imageURL);
 
 function mintNFT(string memory _tokenURI) public {
     _mintNFT(msg.sender, _tokenID, _tokenURI);
     emit NFTMinted(_tokenID, msg.sender, _tokenURI);
     
 }
 
 function _mintNFT(
            address _to,
            uint256 _tokenId,
            string memory _tokenURI
        ) private{
            _mint(_to, _tokenId);
            _setTokenURI(_tokenId, _tokenURI);
            _tokenId += 1;
        }
}
