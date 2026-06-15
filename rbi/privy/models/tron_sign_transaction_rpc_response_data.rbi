# typed: strong

module Privy
  module Models
    class TronSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TronSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::TronSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signed_transaction

      # Data returned by the Tron `tron_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::TronSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signed_transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::TronSignTransactionRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(Symbol, Privy::TronSignTransactionRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::TronSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TronSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
