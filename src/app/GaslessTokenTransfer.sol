// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../interfaces/IERC20Permit.sol";

contract GaslessTokenTransfer {
    function send(
        address token,
        address sender,
        address receiver,
        uint256 amount,
        uint256 fee,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        // permit : sender approves this contract to spend amount + fee
        IERC20Permit(token).permit(sender, address(this), amount + fee, deadline, v, r, s);
        // transferFrom(sender, receiver, amount)
        IERC20Permit(token).transferFrom(sender, receiver, amount);
        // transferFrom(sender, msg.sender, fee)
        IERC20Permit(token).transferFrom(sender, msg.sender, fee);
    }
}
