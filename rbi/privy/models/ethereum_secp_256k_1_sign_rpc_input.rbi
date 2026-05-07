# typed: strong

module Privy
  module Models
    class EthereumSecp256k1SignRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumSecp256k1SignRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EthereumSecp256k1SignRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the EVM `secp256k1_sign` RPC.
      sig { returns(Privy::EthereumSecp256k1SignRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::EthereumSecp256k1SignRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumSecp256k1SignRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::EthereumSecp256k1SignRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Signs a raw hash on the secp256k1 curve.
      sig do
        params(
          method_: Privy::EthereumSecp256k1SignRpcInput::Method::OrSymbol,
          params: Privy::EthereumSecp256k1SignRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::EthereumSecp256k1SignRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `secp256k1_sign` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::EthereumSecp256k1SignRpcInput::Method::OrSymbol,
            params: Privy::EthereumSecp256k1SignRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumSecp256k1SignRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumSecp256k1SignRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SECP256K1_SIGN =
          T.let(
            :secp256k1_sign,
            Privy::EthereumSecp256k1SignRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumSecp256k1SignRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSecp256k1SignRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumSecp256k1SignRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSecp256k1SignRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
