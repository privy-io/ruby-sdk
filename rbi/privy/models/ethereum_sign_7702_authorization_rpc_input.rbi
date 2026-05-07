# typed: strong

module Privy
  module Models
    class EthereumSign7702AuthorizationRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSign7702AuthorizationRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::EthereumSign7702AuthorizationRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the EVM `eth_sign7702Authorization` RPC.
      sig { returns(Privy::EthereumSign7702AuthorizationRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::EthereumSign7702AuthorizationRpcInputParams::OrHash
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
            Privy::EthereumSign7702AuthorizationRpcInput::ChainType::OrSymbol
          )
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type:
            Privy::EthereumSign7702AuthorizationRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Signs an EIP-7702 authorization.
      sig do
        params(
          method_:
            Privy::EthereumSign7702AuthorizationRpcInput::Method::OrSymbol,
          params: Privy::EthereumSign7702AuthorizationRpcInputParams::OrHash,
          address: String,
          chain_type:
            Privy::EthereumSign7702AuthorizationRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `eth_sign7702Authorization` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_:
              Privy::EthereumSign7702AuthorizationRpcInput::Method::OrSymbol,
            params: Privy::EthereumSign7702AuthorizationRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSign7702AuthorizationRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumSign7702AuthorizationRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN7702_AUTHORIZATION =
          T.let(
            :eth_sign7702Authorization,
            Privy::EthereumSign7702AuthorizationRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSign7702AuthorizationRpcInput::Method::TaggedSymbol
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
              Privy::EthereumSign7702AuthorizationRpcInput::ChainType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSign7702AuthorizationRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSign7702AuthorizationRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
