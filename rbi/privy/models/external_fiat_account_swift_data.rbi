# typed: strong

module Privy
  module Models
    class ExternalFiatAccountSwiftData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountSwiftData, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_number

      # The BIC/SWIFT code of the beneficiary bank.
      sig { returns(String) }
      attr_accessor :bic

      # Business relationship between the payer and the SWIFT account owner.
      sig { returns(Privy::ExternalFiatAccountSwiftCategory::OrSymbol) }
      attr_accessor :category

      sig do
        returns(
          T::Array[Privy::ExternalFiatAccountSwiftPurposeOfFunds::OrSymbol]
        )
      end
      attr_accessor :purpose_of_funds

      sig { returns(String) }
      attr_accessor :short_business_description

      sig { returns(Privy::ExternalFiatAccountSwiftData::Type::OrSymbol) }
      attr_accessor :type

      # Country the account is held in, as an ISO 3166-1 alpha-3 code.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # SWIFT bank account data for an external fiat account. Pays out over wire. The
      # beneficiary address is required for SWIFT and is supplied as the request's
      # top-level `address`.
      sig do
        params(
          account_number: String,
          bic: String,
          category: Privy::ExternalFiatAccountSwiftCategory::OrSymbol,
          purpose_of_funds:
            T::Array[Privy::ExternalFiatAccountSwiftPurposeOfFunds::OrSymbol],
          short_business_description: String,
          type: Privy::ExternalFiatAccountSwiftData::Type::OrSymbol,
          country: String
        ).returns(T.attached_class)
      end
      def self.new(
        account_number:,
        # The BIC/SWIFT code of the beneficiary bank.
        bic:,
        # Business relationship between the payer and the SWIFT account owner.
        category:,
        purpose_of_funds:,
        short_business_description:,
        type:,
        # Country the account is held in, as an ISO 3166-1 alpha-3 code.
        country: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            bic: String,
            category: Privy::ExternalFiatAccountSwiftCategory::OrSymbol,
            purpose_of_funds:
              T::Array[Privy::ExternalFiatAccountSwiftPurposeOfFunds::OrSymbol],
            short_business_description: String,
            type: Privy::ExternalFiatAccountSwiftData::Type::OrSymbol,
            country: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExternalFiatAccountSwiftData::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWIFT =
          T.let(:swift, Privy::ExternalFiatAccountSwiftData::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::ExternalFiatAccountSwiftData::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
