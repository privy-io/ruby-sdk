# typed: strong

module Privy
  module Models
    class EthereumSignTransactionRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Privy::EthereumSignTransactionRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the EVM `eth_signTransaction` RPC.
      sig { returns(Privy::EthereumSignTransactionRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::EthereumSignTransactionRpcInputParams::OrHash
        ).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumSignTransactionRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type:
            Privy::EthereumSignTransactionRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the EVM `eth_signTransaction` RPC to sign a transaction.
      sig do
        params(
          method_: Privy::EthereumSignTransactionRpcInput::Method::OrSymbol,
          params: Privy::EthereumSignTransactionRpcInputParams::OrHash,
          address: String,
          chain_type:
            Privy::EthereumSignTransactionRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `eth_signTransaction` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::EthereumSignTransactionRpcInput::Method::OrSymbol,
            params: Privy::EthereumSignTransactionRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSignTransactionRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumSignTransactionRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_TRANSACTION =
          T.let(
            :eth_signTransaction,
            Privy::EthereumSignTransactionRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTransactionRpcInput::Method::TaggedSymbol
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
            T.all(Symbol, Privy::EthereumSignTransactionRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSignTransactionRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTransactionRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
