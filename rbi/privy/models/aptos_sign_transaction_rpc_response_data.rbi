# typed: strong

module Privy
  module Models
    class AptosSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::AptosSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::AptosSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      # A non-empty, 0x-prefixed, even-length BCS legacy Ed25519 SignedTransaction.
      sig { returns(String) }
      attr_accessor :signed_transaction

      # Data returned by the Aptos `aptos_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::AptosSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String
        ).returns(T.attached_class)
      end
      def self.new(
        encoding:,
        # A non-empty, 0x-prefixed, even-length BCS legacy Ed25519 SignedTransaction.
        signed_transaction:
      )
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::AptosSignTransactionRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(Symbol, Privy::AptosSignTransactionRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::AptosSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::AptosSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
