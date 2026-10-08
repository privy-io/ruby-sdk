# typed: strong

module Privy
  module Models
    class CardIssuingErc4626VaultFundingSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingErc4626VaultFundingSource,
            Privy::Internal::AnyHash
          )
        end

      # Earn provider of an ERC-4626 vault a card can spend.
      sig { returns(Privy::CardIssuingErc4626VaultProvider::OrSymbol) }
      attr_accessor :provider

      # Whether this is the source the card spends right now.
      sig { returns(T::Boolean) }
      attr_accessor :selected

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :share_token_address

      # EVM address: 0x followed by 40 hex characters. Preserves input case.
      sig { returns(String) }
      attr_accessor :spender_address

      sig do
        returns(Privy::CardIssuingErc4626VaultFundingSource::Type::OrSymbol)
      end
      attr_accessor :type

      # The funding wallet's shares in an ERC-4626 Earn vault, which the card spends
      # instead of its `asset` balance.
      sig do
        params(
          provider: Privy::CardIssuingErc4626VaultProvider::OrSymbol,
          selected: T::Boolean,
          share_token_address: String,
          spender_address: String,
          type: Privy::CardIssuingErc4626VaultFundingSource::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Earn provider of an ERC-4626 vault a card can spend.
        provider:,
        # Whether this is the source the card spends right now.
        selected:,
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        share_token_address:,
        # EVM address: 0x followed by 40 hex characters. Preserves input case.
        spender_address:,
        type:
      )
      end

      sig do
        override.returns(
          {
            provider: Privy::CardIssuingErc4626VaultProvider::OrSymbol,
            selected: T::Boolean,
            share_token_address: String,
            spender_address: String,
            type: Privy::CardIssuingErc4626VaultFundingSource::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingErc4626VaultFundingSource::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ERC4626_VAULT =
          T.let(
            :erc4626_vault,
            Privy::CardIssuingErc4626VaultFundingSource::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CardIssuingErc4626VaultFundingSource::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
