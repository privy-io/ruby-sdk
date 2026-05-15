# typed: strong

module Privy
  module Models
    class RawSignResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawSignResponseData, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::RawSignResponseData::Encoding::TaggedSymbol) }
      attr_accessor :encoding

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :signature

      # Data returned by the `raw_sign` RPC.
      sig do
        params(
          encoding: Privy::RawSignResponseData::Encoding::OrSymbol,
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
            encoding: Privy::RawSignResponseData::Encoding::TaggedSymbol,
            signature: String
          }
        )
      end
      def to_hash
      end

      module Encoding
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RawSignResponseData::Encoding) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HEX = T.let(:hex, Privy::RawSignResponseData::Encoding::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RawSignResponseData::Encoding::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
