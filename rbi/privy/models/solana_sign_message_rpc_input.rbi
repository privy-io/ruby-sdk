# typed: strong

module Privy
  module Models
    class SolanaSignMessageRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SolanaSignMessageRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::SolanaSignMessageRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Parameters for the SVM `signMessage` RPC.
      sig { returns(Privy::SolanaSignMessageRpcInputParams) }
      attr_reader :params

      sig do
        params(params: Privy::SolanaSignMessageRpcInputParams::OrHash).void
      end
      attr_writer :params

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig do
        returns(
          T.nilable(Privy::SolanaSignMessageRpcInput::ChainType::OrSymbol)
        )
      end
      attr_reader :chain_type

      sig do
        params(
          chain_type: Privy::SolanaSignMessageRpcInput::ChainType::OrSymbol
        ).void
      end
      attr_writer :chain_type

      sig { returns(T.nilable(String)) }
      attr_reader :wallet_id

      sig { params(wallet_id: String).void }
      attr_writer :wallet_id

      # Executes the SVM `signMessage` RPC to sign a message.
      sig do
        params(
          method_: Privy::SolanaSignMessageRpcInput::Method::OrSymbol,
          params: Privy::SolanaSignMessageRpcInputParams::OrHash,
          address: String,
          chain_type: Privy::SolanaSignMessageRpcInput::ChainType::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # Parameters for the SVM `signMessage` RPC.
        params:,
        address: nil,
        chain_type: nil,
        wallet_id: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::SolanaSignMessageRpcInput::Method::OrSymbol,
            params: Privy::SolanaSignMessageRpcInputParams,
            address: String,
            chain_type: Privy::SolanaSignMessageRpcInput::ChainType::OrSymbol,
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
            T.all(Symbol, Privy::SolanaSignMessageRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SIGN_MESSAGE =
          T.let(
            :signMessage,
            Privy::SolanaSignMessageRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SolanaSignMessageRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ChainType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignMessageRpcInput::ChainType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SOLANA =
          T.let(
            :solana,
            Privy::SolanaSignMessageRpcInput::ChainType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SolanaSignMessageRpcInput::ChainType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
