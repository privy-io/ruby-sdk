# typed: strong

module Privy
  module Models
    class EthereumSendTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSendTransactionRpcInput,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(Privy::EthereumSendTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the EVM `eth_sendTransaction` RPC.
      sig { returns(Privy::EthereumSendTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::EthereumSendTransactionRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumSendTransactionRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type:
            Privy::EthereumSendTransactionRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :experimental_data_suffix

      sig { params(experimental_data_suffix: String).void }
      attr_writer :experimental_data_suffix

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

      # Executes the EVM `eth_sendTransaction` RPC to sign and broadcast a transaction.
      sig do
        params(
          caip2: String,
          method_: Privy::EthereumSendTransactionRpcInput::Method::OrSymbol,
          params: Privy::EthereumSendTransactionRpcInputParams::OrHash,
          address: String,
          chain_type:
            Privy::EthereumSendTransactionRpcInput::ChainType::OrSymbol,
          experimental_data_suffix: String,
          reference_id: String,
          sponsor: T::Boolean,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2:,
        method_:,
        # Parameters for the EVM `eth_sendTransaction` RPC.
        params:,
        address: nil,
        chain_type: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        experimental_data_suffix: nil,
        reference_id: nil,
        sponsor: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            method_: Privy::EthereumSendTransactionRpcInput::Method::OrSymbol,
            params: Privy::EthereumSendTransactionRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSendTransactionRpcInput::ChainType::OrSymbol,
            experimental_data_suffix: String,
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
            T.all(Symbol, Privy::EthereumSendTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SEND_TRANSACTION =
          T.let(
            :eth_sendTransaction,
            Privy::EthereumSendTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSendTransactionRpcInput::Method::TaggedSymbol
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
            T.all(Symbol, Privy::EthereumSendTransactionRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSendTransactionRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSendTransactionRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
