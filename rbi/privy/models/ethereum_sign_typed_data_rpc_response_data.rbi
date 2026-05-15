# typed: strong

module Privy
  module Models
    class EthereumSignTypedDataRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSignTypedDataRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::EthereumSignTypedDataRpcResponseData::Encoding::TaggedSymbol
        )
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signature

      # Data returned by the EVM `eth_signTypedData_v4` RPC.
      sig do
        params(
          encoding:
            Privy::EthereumSignTypedDataRpcResponseData::Encoding::OrSymbol,
          signature: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signature:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::EthereumSignTypedDataRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(Symbol, Privy::EthereumSignTypedDataRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::EthereumSignTypedDataRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumSignTypedDataRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
