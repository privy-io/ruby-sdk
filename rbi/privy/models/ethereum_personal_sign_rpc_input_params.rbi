# typed: strong

module Privy
  module Models
    class EthereumPersonalSignRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumPersonalSignRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::EthereumPersonalSignRpcInputParams::Encoding::OrSymbol)
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :message

      # Parameters for the EVM `personal_sign` RPC.
      sig do
        params(
          encoding:
            Privy::EthereumPersonalSignRpcInputParams::Encoding::OrSymbol,
          message: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, message:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::EthereumPersonalSignRpcInputParams::Encoding::OrSymbol,
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
            T.all(Symbol, Privy::EthereumPersonalSignRpcInputParams::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UTF_8 =
          T.let(
            :"utf-8",
            Privy::EthereumPersonalSignRpcInputParams::Encoding::TaggedSymbol
          )
        HEX =
          T.let(
            :hex,
            Privy::EthereumPersonalSignRpcInputParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EthereumPersonalSignRpcInputParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
