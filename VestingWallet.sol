// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
import "@openzeppelin/contracts/finance/VestingWallet.sol";

contract Vesting is VestingWallet{

    constructor(
        address beneficiaryAddress,
        uint64 startTimestamp,
        uint64 durationSeconds
        )
        VestingWallet(
                beneficiaryAddress,
                startTimestamp,
                durationSeconds
        ){

    }

    function renounceOwnership() public override onlyOwner {
        transferOwnership(owner());
    }


}