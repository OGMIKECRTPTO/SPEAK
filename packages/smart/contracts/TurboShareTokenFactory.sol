// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma abicoder v2;

import "./OwnedShareToken.sol";

abstract contract TurboShareTokenFactory {
    function createShareTokens(string[] memory _names, address _owner) internal returns (OwnedERC20[] memory) {
        uint256 _numOutcomes = _names.length;
        OwnedERC20[] memory _tokens = new OwnedERC20[](_numOutcomes);

        for (uint256 _i = 0; _i < _numOutcomes; _i++) {
            _tokens[_i] = new OwnedERC20(_names[_i], _names[_i], _owner);
        }
        return _tokens;
    }
}

abstract contract TurboShareTokenFactoryV1 {
    function createShareTokens(
        string[] memory _names,
        string[] memory _symbols,
        address _owner
    ) internal returns (OwnedERC20[] memory) {
        uint256 _numOutcomes = _names.length;
        OwnedERC20[] memory _tokens = new OwnedERC20[](_numOutcomes);

        for (uint256 _i = 0; _i < _numOutcomes; _i++) {
            _tokens[_i] = new OwnedERC20(_names[_i], _symbols[_i], _owner);
        }
        return _tokens;
    }
}
