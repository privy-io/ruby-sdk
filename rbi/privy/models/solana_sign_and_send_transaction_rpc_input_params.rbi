# typed: strong

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignAndSendTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding::OrSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :transaction

      # Parameters for the SVM `signAndSendTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding::OrSymbol,
          transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding::OrSymbol,
            transaction: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignAndSendTransactionRpcInputParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
