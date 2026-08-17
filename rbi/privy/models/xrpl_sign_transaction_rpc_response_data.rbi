# typed: strong

module Privy
  module Models
    class XrplSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::XrplSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::XrplSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signed_transaction

      sig { returns(String) }
      attr_accessor :txn_signature

      # Data returned by the XRPL `xrpl_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::XrplSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String,
          txn_signature: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signed_transaction:, txn_signature:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::XrplSignTransactionRpcResponseData::Encoding::TaggedSymbol,
            signed_transaction: String,
            txn_signature: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::XrplSignTransactionRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::XrplSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::XrplSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
