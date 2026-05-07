# typed: strong

module Privy
  module Models
    class SolanaSignMessageRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignMessageRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SolanaSignMessageRpcResponseData::Encoding::TaggedSymbol)
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :signature

      # Data returned by the SVM `signMessage` RPC.
      sig do
        params(
          encoding: Privy::SolanaSignMessageRpcResponseData::Encoding::OrSymbol,
          signature: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, signature:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::SolanaSignMessageRpcResponseData::Encoding::TaggedSymbol,
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
            T.all(Symbol, Privy::SolanaSignMessageRpcResponseData::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::SolanaSignMessageRpcResponseData::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignMessageRpcResponseData::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
