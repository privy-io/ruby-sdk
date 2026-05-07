# typed: strong

module Privy
  module Models
    class EthereumSignTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::EthereumSignTransactionRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signed_transaction

      # Data returned by the EVM `eth_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::EthereumSignTransactionRpcResponseData::Encoding::OrSymbol,
          signed_transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signed_transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::EthereumSignTransactionRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(
              Symbol,
              Privy::EthereumSignTransactionRpcResponseData::Encoding
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RLP =
          T.let(
            :rlp,
            Privy::EthereumSignTransactionRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTransactionRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
