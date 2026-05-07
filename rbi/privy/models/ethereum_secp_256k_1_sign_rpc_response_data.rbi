# typed: strong

module Privy
  module Models
    class EthereumSecp256k1SignRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSecp256k1SignRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::EthereumSecp256k1SignRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :signature

      # Data returned by the EVM `secp256k1_sign` RPC.
      sig do
        params(
          encoding:
            Privy::EthereumSecp256k1SignRpcResponseData::Encoding::OrSymbol,
          signature: String
        ).returns(T.attached_class)
      end
      def self.new(
        encoding:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        signature:
      )
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::EthereumSecp256k1SignRpcResponseData::Encoding::TaggedSymbol,
            signature: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EthereumSecp256k1SignRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::EthereumSecp256k1SignRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSecp256k1SignRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
