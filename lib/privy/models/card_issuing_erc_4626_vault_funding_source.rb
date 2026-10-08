# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingErc4626VaultFundingSource < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   Earn provider of an ERC-4626 vault a card can spend.
      #
      #   @return [Symbol, Privy::Models::CardIssuingErc4626VaultProvider]
      required :provider, enum: -> { Privy::CardIssuingErc4626VaultProvider }

      # @!attribute selected
      #   Whether this is the source the card spends right now.
      #
      #   @return [Boolean]
      required :selected, Privy::Internal::Type::Boolean

      # @!attribute share_token_address
      #   EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @return [String]
      required :share_token_address, String

      # @!attribute spender_address
      #   EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @return [String]
      required :spender_address, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::CardIssuingErc4626VaultFundingSource::Type]
      required :type, enum: -> { Privy::CardIssuingErc4626VaultFundingSource::Type }

      # @!method initialize(provider:, selected:, share_token_address:, spender_address:, type:)
      #   The funding wallet's shares in an ERC-4626 Earn vault, which the card spends
      #   instead of its `asset` balance.
      #
      #   @param provider [Symbol, Privy::Models::CardIssuingErc4626VaultProvider] Earn provider of an ERC-4626 vault a card can spend.
      #
      #   @param selected [Boolean] Whether this is the source the card spends right now.
      #
      #   @param share_token_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @param spender_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @param type [Symbol, Privy::Models::CardIssuingErc4626VaultFundingSource::Type]

      # @see Privy::Models::CardIssuingErc4626VaultFundingSource#type
      module Type
        extend Privy::Internal::Type::Enum

        ERC4626_VAULT = :erc4626_vault

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
