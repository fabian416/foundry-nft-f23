// SPDX-License-Identifier: MIT

pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MoodNft {
    uint256 private s_tokenCounter;
    string private s_sadSvg;
    string private s_happySvg;

    constructor(
        string memory sadSvg,
        string memory happySvg
    ) ERC721("MoodNft", "MN") {
        s_tokenCounter = 0;
        s_sadSvg = sadSvg;
        s_happySvg = happySvg;
    }

    function mintNft() public {
        _safeNft(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }

    function tokenUri(uint256 tokenId) public view returns (string memory) {}
}
