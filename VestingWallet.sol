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
        require(beneficiaryAddress != address(0), "Beneficiary address cannot be zero address");
        require(startTimestamp >= block.timestamp, "Start timestamp cannot be in the past");
        require(durationSeconds > 0, "Duration must be greater than zero");
    }

    function renounceOwnership() public override onlyOwner {
        transferOwnership(owner());
    }


}
