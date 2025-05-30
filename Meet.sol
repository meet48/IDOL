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

        _mint(strategicPartnerFunding, maxSupply * 4 / 100);
        _mint(privateFunding, maxSupply * 3 / 100);
        _mint(publicSale, maxSupply * 3 / 100);
        _mint(ecologyFoundation, maxSupply * 20 / 100);
        _mint(community, maxSupply * 45 / 100);
        _mint(liquidity, maxSupply * 3 / 100);
        _mint(team, maxSupply * 15 / 100);
        _mint(advisor, maxSupply * 2 / 100);
        _mint(airdrop, maxSupply * 5 / 100);
    }

}
