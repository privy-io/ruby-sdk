# typed: strong

module Privy
  module Models
    class LinkedAccountBaseWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountBaseWallet, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::LinkedAccountBaseWallet::ChainType::TaggedSymbol) }
      attr_accessor :chain_type

      sig { returns(Privy::LinkedAccountBaseWallet::Type::TaggedSymbol) }
      attr_accessor :type

      # Base schema for wallet accounts linked to the user.
      sig do
        params(
          address: String,
          chain_type: Privy::LinkedAccountBaseWallet::ChainType::OrSymbol,
          type: Privy::LinkedAccountBaseWallet::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(address:, chain_type:, type:)
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::LinkedAccountBaseWallet::ChainType::TaggedSymbol,
            type: Privy::LinkedAccountBaseWallet::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountBaseWallet::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(
            :solana,
            Privy::LinkedAccountBaseWallet::ChainType::TaggedSymbol
          )
        ETHEREUM =
          T.let(
            :ethereum,
            Privy::LinkedAccountBaseWallet::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountBaseWallet::ChainType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountBaseWallet::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET =
          T.let(:wallet, Privy::LinkedAccountBaseWallet::Type::TaggedSymbol)
        SMART_WALLET =
          T.let(
            :smart_wallet,
            Privy::LinkedAccountBaseWallet::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountBaseWallet::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
