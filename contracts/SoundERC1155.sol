// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.4;

import {WrappedERC1155Token} from "./WrappedERC1155Token.sol";

/**
    @notice An ERC-1155 multitoken where each ID is wrapped in an ERC-20 interface
 */
contract SoundERC1155 is WrappedERC1155Token {
    
   function __LOUD1155_init(
        address admin,
        string calldata uri,
        address _wrapperTemplate,
        bool _deployWrapperOnMint,
        string memory _baseName,
        string memory _baseSymbol,
        uint8 _decimals
    ) internal initializer {
        __ERC1155Base_init(admin, uri);
        __WrappedERC1155Token_init_unchained(
            _wrapperTemplate,
            _deployWrapperOnMint,
            _baseName,
            _baseSymbol,
            _decimals
        );
    }
    
    function initialize(
        address admin,
        string calldata uri,
        address _wrapperTemplate,
        bool _deployWrapperOnMint,
        string memory _baseName,
        string memory _baseSymbol,
        uint8 _decimals
    ) external virtual initializer {
        __LOUD1155_init(
            admin,
            uri,
            _wrapperTemplate,
            _deployWrapperOnMint,
            _baseName,
            _baseSymbol,
            _decimals
        );
    }
    
}