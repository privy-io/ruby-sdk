# typed: strong

module Privy
  module Models
    class RawSignResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::RawSignResponse, Privy::Internal::AnyHash) }

      # Data returned by the `raw_sign` RPC.
      sig { returns(Privy::RawSignResponseData) }
      attr_reader :data

      sig { params(data: Privy::RawSignResponseData::OrHash).void }
      attr_writer :data

      sig { returns(Privy::RawSignResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # Response to the `raw_sign` RPC.
      sig do
        params(
          data: Privy::RawSignResponseData::OrHash,
          method_: Privy::RawSignResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Data returned by the `raw_sign` RPC.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::RawSignResponseData,
            method_: Privy::RawSignResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RawSignResponse::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RAW_SIGN =
          T.let(:raw_sign, Privy::RawSignResponse::Method::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RawSignResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
