# typed: strong

module Privy
  module Models
    class EthereumPersonalSignRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumPersonalSignRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EthereumPersonalSignRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the EVM `personal_sign` RPC.
      sig { returns(Privy::EthereumPersonalSignRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::EthereumPersonalSignRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::EthereumPersonalSignRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::EthereumPersonalSignRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the EVM `personal_sign` RPC (EIP-191) to sign a message.
      sig do
        params(
          method_: Privy::EthereumPersonalSignRpcInput::Method::OrSymbol,
          params: Privy::EthereumPersonalSignRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::EthereumPersonalSignRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the EVM `personal_sign` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::EthereumPersonalSignRpcInput::Method::OrSymbol,
            params: Privy::EthereumPersonalSignRpcInputParams,
            address: String,
            chain_type:
              Privy::EthereumPersonalSignRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::EthereumPersonalSignRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERSONAL_SIGN =
          T.let(
            :personal_sign,
            Privy::EthereumPersonalSignRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::EthereumPersonalSignRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumPersonalSignRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ETHEREUM =
          T.let(
            :ethereum,
            Privy::EthereumPersonalSignRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumPersonalSignRpcInput::ChainType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
