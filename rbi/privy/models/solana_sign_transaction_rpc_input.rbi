# typed: strong

module Privy
  module Models
    class SolanaSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SolanaSignTransactionRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SolanaSignTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the SVM `signTransaction` RPC.
      sig { returns(Privy::SolanaSignTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::SolanaSignTransactionRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::SolanaSignTransactionRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::SolanaSignTransactionRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the SVM `signTransaction` RPC to sign a transaction.
      sig do
        params(
          method_: Privy::SolanaSignTransactionRpcInput::Method::OrSymbol,
          params: Privy::SolanaSignTransactionRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::SolanaSignTransactionRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the SVM `signTransaction` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SolanaSignTransactionRpcInput::Method::OrSymbol,
            params: Privy::SolanaSignTransactionRpcInputParams,
            address: String,
            chain_type:
              Privy::SolanaSignTransactionRpcInput::ChainType::OrSymbol,
            wallet_id: String
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_TRANSACTION =
          T.let(
            :signTransaction,
            Privy::SolanaSignTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SolanaSignTransactionRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignTransactionRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(
            :solana,
            Privy::SolanaSignTransactionRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignTransactionRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
