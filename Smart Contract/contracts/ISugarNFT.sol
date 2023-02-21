// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

interface ISugarNFT is IERC721 {
    function buyTickets(string[] calldata uris) external payable;

    function getCurrentTokenId() external view returns (uint256);

    function getTotalSupply() external view returns (uint256);

    function getTokenIdsOf(address owner)
        external
        view
        returns (uint256[] memory);
}
