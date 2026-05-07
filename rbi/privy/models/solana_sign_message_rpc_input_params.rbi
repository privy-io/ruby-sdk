# typed: strong

module Privy
  module Models
    class SolanaSignMessageRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignMessageRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::SolanaSignMessageRpcInputParams::Encoding::OrSymbol)
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :message

      # Parameters for the SVM `signMessage` RPC.
      sig do
        params(
          encoding: Privy::SolanaSignMessageRpcInputParams::Encoding::OrSymbol,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, message:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::SolanaSignMessageRpcInputParams::Encoding::OrSymbol,
            message: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SolanaSignMessageRpcInputParams::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BASE64 =
          T.let(
            :base64,
            Privy::SolanaSignMessageRpcInputParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SolanaSignMessageRpcInputParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
