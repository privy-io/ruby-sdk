# typed: strong

module Privy
  module Models
    class NearSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::NearSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::NearSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      # A non-empty, base64-encoded NEAR Ed25519 SignedTransaction.
      sig { returns(String) }
      attr_accessor :signed_transaction

      # Data returned by the NEAR `near_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::NearSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String
        ).returns(T.attached_class)
      end
      def self.new(
        encoding:,
        # A non-empty, base64-encoded NEAR Ed25519 SignedTransaction.
        signed_transaction:
      )
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::NearSignTransactionRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(Symbol, Privy::NearSignTransactionRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::NearSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::NearSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
