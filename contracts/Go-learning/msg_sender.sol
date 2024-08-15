// SPDX-License-Identifier: MIT
pragma solidity >0.7.0;

contract TestMsgSender{

    address public owner;

    function get_owner() public {
        owner = msg.sender;
    }
}