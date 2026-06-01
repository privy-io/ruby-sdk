# typed: strong

module Privy
  module Models
    class StripeCryptoCustomerNone < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeCryptoCustomerNone, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::StripeCryptoCustomerNone::Status::OrSymbol) }
      attr_accessor :status

      # No onramp session. User must authenticate via Link.
      sig do
        params(
          status: Privy::StripeCryptoCustomerNone::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          { status: Privy::StripeCryptoCustomerNone::Status::OrSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::StripeCryptoCustomerNone::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(:none, Privy::StripeCryptoCustomerNone::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::StripeCryptoCustomerNone::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
