# typed: strong

module Privy
  module Models
    class ExternalFiatAccountGBData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountGBData, Privy::Internal::AnyHash)
        end

      # The 8-digit UK bank account number.
      sig { returns(String) }
      attr_accessor :account_number

      # The 6-digit sort code, without hyphens.
      sig { returns(String) }
      attr_accessor :sort_code

      sig { returns(Privy::ExternalFiatAccountGBData::Type::OrSymbol) }
      attr_accessor :type

      # UK bank account data for an external fiat account. Pays out over Faster
      # Payments.
      sig do
        params(
          account_number: String,
          sort_code: String,
          type: Privy::ExternalFiatAccountGBData::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The 8-digit UK bank account number.
        account_number:,
        # The 6-digit sort code, without hyphens.
        sort_code:,
        type:
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            sort_code: String,
            type: Privy::ExternalFiatAccountGBData::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::ExternalFiatAccountGBData::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GB = T.let(:gb, Privy::ExternalFiatAccountGBData::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::ExternalFiatAccountGBData::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
