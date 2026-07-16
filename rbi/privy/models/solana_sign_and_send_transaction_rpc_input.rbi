# typed: strong

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignAndSendTransactionRpcInput,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :caip2

      sig do
        returns(Privy::SolanaSignAndSendTransactionRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the SVM `signAndSendTransaction` RPC.
      sig { returns(Privy::SolanaSignAndSendTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::SolanaSignAndSendTransactionRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(
            Privy::SolanaSignAndSendTransactionRpcInput::ChainType::OrSymbol
          )
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type:
            Privy::SolanaSignAndSendTransactionRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :optimistic_broadcast

      sig { params(optimistic_broadcast: T::Boolean).void }
      attr_writer :optimistic_broadcast

      sig { returns(T.nilable(String)) }
      attr_reader :reference_id

      sig { params(reference_id: String).void }
      attr_writer :reference_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sponsor

      sig { params(sponsor: T::Boolean).void }
      attr_writer :sponsor

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the SVM `signAndSendTransaction` RPC to sign and broadcast a
      # transaction.
      sig do
        params(
          caip2: String,
          method_:
            Privy::SolanaSignAndSendTransactionRpcInput::Method::OrSymbol,
          params: Privy::SolanaSignAndSendTransactionRpcInputParams::OrHash,
          address: String,
          chain_type:
            Privy::SolanaSignAndSendTransactionRpcInput::ChainType::OrSymbol,
          optimistic_broadcast: T::Boolean,
          reference_id: String,
          sponsor: T::Boolean,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        caip2:,
        method_:,
        # Parameters for the SVM `signAndSendTransaction` RPC.
        params:,
        address: nil,
        chain_type: nil,
        optimistic_broadcast: nil,
        reference_id: nil,
        sponsor: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            method_:
              Privy::SolanaSignAndSendTransactionRpcInput::Method::OrSymbol,
            params: Privy::SolanaSignAndSendTransactionRpcInputParams,
            address: String,
            chain_type:
              Privy::SolanaSignAndSendTransactionRpcInput::ChainType::OrSymbol,
            optimistic_broadcast: T::Boolean,
            reference_id: String,
            sponsor: T::Boolean,
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
            T.all(Symbol, Privy::SolanaSignAndSendTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_AND_SEND_TRANSACTION =
          T.let(
            :signAndSendTransaction,
            Privy::SolanaSignAndSendTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignAndSendTransactionRpcInput::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::SolanaSignAndSendTransactionRpcInput::ChainType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(
            :solana,
            Privy::SolanaSignAndSendTransactionRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignAndSendTransactionRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
