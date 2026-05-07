# typed: strong

module Privy
  module Models
    class EthereumSendCallsRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumSendCallsRpcInput, Privy::Internal::AnyHash)
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(Privy::EthereumSendCallsRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the `wallet_sendCalls` RPC.
      sig { returns(Privy::EthereumSendCallsRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::EthereumSendCallsRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumSendCallsRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::EthereumSendCallsRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(T.nilable(String)) }
      attr_reader :experimental_data_suffix

      sig { params(experimental_data_suffix: String).void }
      attr_writer :experimental_data_suffix

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sponsor

      sig { params(sponsor: T::Boolean).void }
      attr_writer :sponsor

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the `wallet_sendCalls` RPC (EIP-5792) to batch multiple calls into a
      # single atomic transaction.
      sig do
        params(
          caip2: String,
          method_: Privy::EthereumSendCallsRpcInput::Method::OrSymbol,
          params: Privy::EthereumSendCallsRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::EthereumSendCallsRpcInput::ChainType::OrSymbol,
          experimental_data_suffix: String,
          sponsor: T::Boolean,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2:,
        method_:,
        # Parameters for the `wallet_sendCalls` RPC.
        params:,
        address: nil,
        chain_type: nil,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        experimental_data_suffix: nil,
        sponsor: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            method_: Privy::EthereumSendCallsRpcInput::Method::OrSymbol,
            params: Privy::EthereumSendCallsRpcInputParams,
            address: String,
            chain_type: Privy::EthereumSendCallsRpcInput::ChainType::OrSymbol,
            experimental_data_suffix: String,
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
            T.all(Symbol, Privy::EthereumSendCallsRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_SEND_CALLS =
          T.let(
            :wallet_sendCalls,
            Privy::EthereumSendCallsRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumSendCallsRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSendCallsRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSendCallsRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumSendCallsRpcInput::ChainType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
