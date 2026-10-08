# typed: strong

module Privy
  module Models
    class CardIssuingWalletFundingSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingWalletFundingSource, Privy::Internal::AnyHash)
        end

      # Whether this is the source the card spends right now.
      sig { returns(T::Boolean) }
      attr_accessor :selected

      sig { returns(Privy::CardIssuingWalletFundingSource::Type::OrSymbol) }
      attr_accessor :type

      # The funding wallet's `asset` balance.
      sig do
        params(
          selected: T::Boolean,
          type: Privy::CardIssuingWalletFundingSource::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether this is the source the card spends right now.
        selected:,
        type:
      )
      end

      sig do
        override.returns(
          {
            selected: T::Boolean,
            type: Privy::CardIssuingWalletFundingSource::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CardIssuingWalletFundingSource::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET =
          T.let(
            :wallet,
            Privy::CardIssuingWalletFundingSource::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::CardIssuingWalletFundingSource::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
