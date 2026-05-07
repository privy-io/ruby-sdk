# typed: strong

module Privy
  module Models
    class SolanaSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SolanaSignTransactionRpcInputParams::Encoding::OrSymbol)
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :transaction

      # Parameters for the SVM `signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::SolanaSignTransactionRpcInputParams::Encoding::OrSymbol,
          transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::SolanaSignTransactionRpcInputParams::Encoding::OrSymbol,
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
            T.all(Symbol, Privy::SolanaSignTransactionRpcInputParams::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::SolanaSignTransactionRpcInputParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignTransactionRpcInputParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
