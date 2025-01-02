// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity 0.8.23;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Meet is ERC20, ERC20Burnable {
    uint256 public maxSupply;

    constructor(
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
    {
        maxSupply = 4800000000 * 10 ** 18;

        require(isValidAddress(strategicPartnerFunding), "Invalid strategic partner funding address");
        require(isValidAddress(privateFunding), "Invalid private funding address");
        require(isValidAddress(publicSale), "Invalid public sale address");
        require(isValidAddress(ecologyFoundation), "Invalid ecology foundation address");
        require(isValidAddress(community), "Invalid community address");
        require(isValidAddress(liquidity), "Invalid liquidity address");
        require(isValidAddress(team), "Invalid team address");
        require(isValidAddress(advisor), "Invalid advisor address");

        _mint(strategicPartnerFunding, maxSupply * 2 / 100);
        _mint(privateFunding, maxSupply * 5 / 100);
        _mint(publicSale, maxSupply * 3 / 100);
        _mint(ecologyFoundation, maxSupply * 13 / 100);
        _mint(community, maxSupply * 50 / 100);
        _mint(liquidity, maxSupply * 10 / 100);
        _mint(team, maxSupply * 15 / 100);
        _mint(advisor, maxSupply * 2 / 100);
    }

    function isValidAddress(address _address) internal pure returns (bool) {
        return _address != address(0);
    }

}
