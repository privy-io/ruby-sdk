# typed: strong

module Privy
  module Models
    class LinkedAccountSolana < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountSolana, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::LinkedAccountSolana::ChainType::TaggedSymbol) }
      attr_accessor :chain_type

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(Privy::LinkedAccountSolana::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(Privy::LinkedAccountSolana::WalletClient::TaggedSymbol) }
      attr_accessor :wallet_client

      sig { returns(T.nilable(String)) }
      attr_reader :connector_type

      sig { params(connector_type: String).void }
      attr_writer :connector_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_client_type

      sig { params(wallet_client_type: String).void }
      attr_writer :wallet_client_type

      # A Solana wallet account linked to the user.
      sig do
        params(
          address: String,
          chain_type: Privy::LinkedAccountSolana::ChainType::OrSymbol,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          type: Privy::LinkedAccountSolana::Type::OrSymbol,
          verified_at: Float,
          wallet_client: Privy::LinkedAccountSolana::WalletClient::OrSymbol,
          connector_type: String,
          wallet_client_type: String
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        chain_type:,
        first_verified_at:,
        latest_verified_at:,
        type:,
        verified_at:,
        wallet_client:,
        connector_type: nil,
        wallet_client_type: nil
      )
      end

      sig do
        override.returns(
          {
            address: String,
            chain_type: Privy::LinkedAccountSolana::ChainType::TaggedSymbol,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            type: Privy::LinkedAccountSolana::Type::TaggedSymbol,
            verified_at: Float,
            wallet_client:
              Privy::LinkedAccountSolana::WalletClient::TaggedSymbol,
            connector_type: String,
            wallet_client_type: String
          }
        )
      end
      def to_hash
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountSolana::ChainType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(:solana, Privy::LinkedAccountSolana::ChainType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountSolana::ChainType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountSolana::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET = T.let(:wallet, Privy::LinkedAccountSolana::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountSolana::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module WalletClient
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountSolana::WalletClient)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNKNOWN =
          T.let(
            :unknown,
            Privy::LinkedAccountSolana::WalletClient::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountSolana::WalletClient::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
