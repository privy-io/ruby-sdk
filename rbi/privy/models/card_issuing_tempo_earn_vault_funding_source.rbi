# typed: strong

module Privy
  module Models
    class CardIssuingTempoEarnVaultFundingSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingTempoEarnVaultFundingSource,
            Privy::Internal::AnyHash
          )
        end

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :asset_address

      # Whether the card spends this vault right now; neither it nor the wallet is when
      # the wallet chose a vault outside the app's Earn vaults.
      sig { returns(T::Boolean) }
      attr_accessor :selected

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :share_token_address

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :spender_address

      sig do
        returns(Privy::CardIssuingTempoEarnVaultFundingSource::Type::OrSymbol)
      end
      attr_accessor :type

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :vault_address

      # The funding wallet's shares in a Tempo Earn vault, which a card that also lists
      # its wallet can switch to and back from.
      sig do
        params(
          asset_address: String,
          selected: T::Boolean,
          share_token_address: String,
          spender_address: String,
          type: Privy::CardIssuingTempoEarnVaultFundingSource::Type::OrSymbol,
          vault_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        asset_address:,
        # Whether the card spends this vault right now; neither it nor the wallet is when
        # the wallet chose a vault outside the app's Earn vaults.
        selected:,
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        share_token_address:,
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        spender_address:,
        type:,
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        vault_address:
      )
      end

      sig do
        override.returns(
          {
            asset_address: String,
            selected: T::Boolean,
            share_token_address: String,
            spender_address: String,
            type: Privy::CardIssuingTempoEarnVaultFundingSource::Type::OrSymbol,
            vault_address: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingTempoEarnVaultFundingSource::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEMPO_EARN_VAULT =
          T.let(
            :tempo_earn_vault,
            Privy::CardIssuingTempoEarnVaultFundingSource::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingTempoEarnVaultFundingSource::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
