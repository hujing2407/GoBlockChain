// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Tx {
    uint256 public bal;
    address public owner; // = 0xab155223f0370B13B9cEf85ed1b3414FCc7E0a25;

    // 0xd54d0EbF44B7E8e888eDfFB2b67db3156eE1162E

    function get_owner() public {
        owner = msg.sender;
    }

    function contract_get_money() public payable returns (string memory) {
        require(msg.value > 5 * 10**18); // Recommanded: call assert(), no gas consume

        // assert(msg.value > 5 * 10**18);
        
        // if (msg.value <= 5 * 10**18) {
        //     revert();
        // } else {
        //     return "Success!";
        // }

        return "Success!";
    }

    function get_balance() public {
        bal = address(this).balance;
    }
}
