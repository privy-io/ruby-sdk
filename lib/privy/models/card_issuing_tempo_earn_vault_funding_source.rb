# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingTempoEarnVaultFundingSource < Privy::Internal::Type::BaseModel
      # @!attribute asset_address
      #   EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute selected
      #   Whether the card spends this vault right now; neither it nor the wallet is when
      #   the wallet chose a vault outside the app's Earn vaults.
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
      #   @return [Symbol, Privy::Models::CardIssuingTempoEarnVaultFundingSource::Type]
      required :type, enum: -> { Privy::CardIssuingTempoEarnVaultFundingSource::Type }

      # @!attribute vault_address
      #   EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(asset_address:, selected:, share_token_address:, spender_address:, type:, vault_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingTempoEarnVaultFundingSource} for more details.
      #
      #   The funding wallet's shares in a Tempo Earn vault, which a card that also lists
      #   its wallet can switch to and back from.
      #
      #   @param asset_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @param selected [Boolean] Whether the card spends this vault right now; neither it nor the wallet is when
      #
      #   @param share_token_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @param spender_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.
      #
      #   @param type [Symbol, Privy::Models::CardIssuingTempoEarnVaultFundingSource::Type]
      #
      #   @param vault_address [String] EVM address: 0x followed by 40 hex characters. Preserves input case.

      # @see Privy::Models::CardIssuingTempoEarnVaultFundingSource#type
      module Type
        extend Privy::Internal::Type::Enum

        TEMPO_EARN_VAULT = :tempo_earn_vault

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
