# typed: strong

module Privy
  module Models
    class LinkedAccountWalletInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountWalletInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::LinkedAccountWalletInput::ChainType::OrSymbol) }
      attr_accessor :chain_type

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a wallet account.
      sig do
        params(
          address: String,
          chain_type: Privy::LinkedAccountWalletInput::ChainType::OrSymbol,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(address:, chain_type:, type: :wallet)
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::LinkedAccountWalletInput::ChainType::OrSymbol,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountWalletInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::LinkedAccountWalletInput::ChainType::TaggedSymbol
          )
        SOLANA =
          T.let(
            :solana,
            Privy::LinkedAccountWalletInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountWalletInput::ChainType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
