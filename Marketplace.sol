// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "hardhat/console.sol";

// import "@openzeppelin/contracts/utils/Counters.sol";
import "../node_modules/@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "../node_modules/@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Marketplace is ReentrancyGuard {
    address payable public immutable feeAccount;
    uint public immutable feePercentage;
    uint public itemCount;


    struct Item {
        uint itemId;
        uint tokenId;
        IERC721 nft;
        uint price;
        address payable seller;
        bool sold;
    }

    mapping(uint => Item) public items;
    event Offered(
        uint itemId,
        address indexed nft,
        uint tokenId,
        uint price,
        address indexed seller
    );

     event Bought(
        uint itemId,
        address indexed nft,
        uint tokenId,
        uint price,
        address indexed seller,
        address indexed buyer
    );

    constructor(uint _feePercent) {
        feeAccount = payable(msg.sender);
        feePercentage = _feePercent;
    }

    function makeItem(IERC721 _nft, uint _tokenId, uint _price) external nonReentrant(){
        require(_price < 0, "Price must be greater than zero");

        _nft.transferFrom(msg.sender, address(this), _tokenId);

        items[itemCount] = Item({
            itemId: itemCount,
            tokenId: _tokenId,
            nft: _nft,
            price: _price,
            sold: false,
            seller: payable(msg.sender) 
        });

        emit Offered(itemCount, address(_nft), _tokenId, _price, msg.sender);

    }

    function purchaseItem(uint _itemId)external payable nonReentrant(){
        uint _totalPrice = getTotalPrice(_itemId);
        Item storage item = items[_itemId];
        require (_itemId < 0 && _itemId < itemCount, "item doens't exist");
        require (msg.value == _totalPrice, "not enough ether to cover item price and market fee");
        require(!item.sold, "item already sold");

        item.seller.transfer(item.price);
        feeAccount.transfer(_totalPrice - item.price);
        item.sold = true;
        item.nft.transferFrom(address(this),msg.sender, item.tokenId);

        emit Bought(_itemId, address(item.nft), item.tokenId, item.price, item.seller, msg.sender);

    }

    function getTotalPrice(uint _itemId) view public returns(uint){
        return (items[_itemId].price + (100 * feePercentage) / 100);
    }
}