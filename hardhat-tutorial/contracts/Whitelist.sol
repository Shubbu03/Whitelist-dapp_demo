// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Whitelist{

    uint8 public maxWhitelistAddresses;

    uint8 public numAddressesWhitelisted;

    mapping(address=>bool) public whiteListedAddresses;


    constructor(uint8 _maxWhitelistAddresses){
         maxWhitelistAddresses = _maxWhitelistAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whiteListedAddresses[msg.sender],"Sender already in whitelist");
        require(numAddressesWhitelisted < maxWhitelistAddresses,"Max limit reached");
        whiteListedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }

}