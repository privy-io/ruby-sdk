# typed: strong

module Privy
  module Models
    class EthereumSignUserOperationRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignUserOperationRpcInput,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::EthereumSignUserOperationRpcInput::Method::OrSymbol)
      end
      attr_accessor :method_

      # Parameters for the EVM `eth_signUserOperation` RPC.
      sig { returns(Privy::EthereumSignUserOperationRpcInputParams) }
      attr_reader :params

      sig do
        params(
          params: Privy::EthereumSignUserOperationRpcInputParams::OrHash
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
            Privy::EthereumSignUserOperationRpcInput::ChainType::OrSymbol
          )
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type:
            Privy::EthereumSignUserOperationRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes an RPC method to hash and sign a UserOperation.
      sig do
        params(
          method_: Privy::EthereumSignUserOperationRpcInput::Method::OrSymbol,
          params: Privy::EthereumSignUserOperationRpcInputParams::OrHash,
          address: String,
          chain_type:
            Privy::EthereumSignUserOperationRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `eth_signUserOperation` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::EthereumSignUserOperationRpcInput::Method::OrSymbol,
            params: Privy::EthereumSignUserOperationRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSignUserOperationRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumSignUserOperationRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_USER_OPERATION =
          T.let(
            :eth_signUserOperation,
            Privy::EthereumSignUserOperationRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignUserOperationRpcInput::Method::TaggedSymbol
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
            T.all(Symbol, Privy::EthereumSignUserOperationRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSignUserOperationRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignUserOperationRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
