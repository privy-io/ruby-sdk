# typed: strong

module Privy
  module Models
    class XrplSignTransactionRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::XrplSignTransactionRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::XrplSignTransactionRpcInputParams::Encoding::OrSymbol)
      end
      attr_accessor :encoding

      sig { returns(String) }
      attr_accessor :transaction

      # Parameters for the XRPL `xrpl_signTransaction` RPC.
      sig do
        params(
          encoding:
            Privy::XrplSignTransactionRpcInputParams::Encoding::OrSymbol,
          transaction: String
        ).returns(T.attached_class)
      end
      def self.new(encoding:, transaction:)
      end

      sig do
        override.returns(
          {
            encoding:
              Privy::XrplSignTransactionRpcInputParams::Encoding::OrSymbol,
            transaction: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::XrplSignTransactionRpcInputParams::Encoding)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX =
          T.let(
            :hex,
            Privy::XrplSignTransactionRpcInputParams::Encoding::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::XrplSignTransactionRpcInputParams::Encoding::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
