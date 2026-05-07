# typed: strong

module Privy
  module Models
    class EthereumSignTypedDataRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumSignTypedDataRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EthereumSignTypedDataRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the EVM `eth_signTypedData_v4` RPC.
      sig { returns(Privy::EthereumSignTypedDataRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::EthereumSignTypedDataRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumSignTypedDataRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::EthereumSignTypedDataRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the EVM `eth_signTypedData_v4` RPC (EIP-712) to sign a typed data
      # object.
      sig do
        params(
          method_: Privy::EthereumSignTypedDataRpcInput::Method::OrSymbol,
          params: Privy::EthereumSignTypedDataRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::EthereumSignTypedDataRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `eth_signTypedData_v4` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::EthereumSignTypedDataRpcInput::Method::OrSymbol,
            params: Privy::EthereumSignTypedDataRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSignTypedDataRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumSignTypedDataRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETH_SIGN_TYPED_DATA_V4 =
          T.let(
            :eth_signTypedData_v4,
            Privy::EthereumSignTypedDataRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumSignTypedDataRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSignTypedDataRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSignTypedDataRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTypedDataRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
