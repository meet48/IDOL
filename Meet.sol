// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Meet is ERC20, ERC20Burnable, Ownable {
    uint256 public maxSupply;

    constructor(
        address initialOwner,
        address strategicPartnerFunding,
        address privateFunding,
        address publicSale,
        address ecologyFoundation,
        address community,
        address liquidity,
        address team,
        address advisor
        )
        ERC20("MEET48 Token", "IDOL")
        Ownable(initialOwner)
    {
        maxSupply = 4800000000 * 10 ** 18;

        _mint(strategicPartnerFunding, maxSupply * 2 / 100);
        _mint(privateFunding, maxSupply * 5 / 100);
        _mint(publicSale, maxSupply * 3 / 100);
        _mint(ecologyFoundation, maxSupply * 13 / 100);
        _mint(community, maxSupply * 50 / 100);
        _mint(liquidity, maxSupply * 10 / 100);
        _mint(team, maxSupply * 15 / 100);
        _mint(advisor, maxSupply * 2 / 100);
    }


}