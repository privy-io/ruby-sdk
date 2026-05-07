# typed: strong

module Privy
  module Models
    class SolanaSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::SolanaSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signed_transaction

      # Data returned by the SVM `signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::SolanaSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signed_transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::SolanaSignTransactionRpcResponseData::Encoding::TaggedSymbol,
            signed_transaction: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignTransactionRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::SolanaSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
