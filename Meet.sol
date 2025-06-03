// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Meet is ERC20 {
    uint256 public immutable maxSupply;

    constructor(
        address strategicPartnerFunding,
        address privateFunding,
        address publicSale,
        address ecologyFoundation,
        address community,
        address liquidity,
        address team,
        address advisor,
        address airdrop
        )
        ERC20("MEET48 Token", "IDOL")
    {
        maxSupply = 4800000000 * 10 ** 18;

        _mint(strategicPartnerFunding, maxSupply * 40 / 1000);
        _mint(privateFunding, maxSupply * 30 / 1000);
        _mint(publicSale, maxSupply * 5 / 1000);
        _mint(ecologyFoundation, maxSupply * 200 / 1000);
        _mint(community, maxSupply * 465 / 1000);
        _mint(liquidity, maxSupply * 30 / 1000);
        _mint(team, maxSupply * 150 / 1000);
        _mint(advisor, maxSupply * 20 / 1000);
        _mint(airdrop, maxSupply * 60 / 1000);
    }

}
