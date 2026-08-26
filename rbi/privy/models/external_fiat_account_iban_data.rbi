# typed: strong

module Privy
  module Models
    class ExternalFiatAccountIbanData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountIbanData, Privy::Internal::AnyHash)
        end

      # The IBAN. Up to 34 characters, per ISO 13616.
      sig { returns(String) }
      attr_accessor :account_number

      # The BIC/SWIFT code of the beneficiary bank.
      sig { returns(String) }
      attr_accessor :bic

      # Country the account is held in, as an ISO 3166-1 alpha-3 code.
      sig { returns(String) }
      attr_accessor :country

      sig { returns(Privy::ExternalFiatAccountIbanData::Type::OrSymbol) }
      attr_accessor :type

      # IBAN bank account data for an external fiat account. Pays out over SEPA.
      sig do
        params(
          account_number: String,
          bic: String,
          country: String,
          type: Privy::ExternalFiatAccountIbanData::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The IBAN. Up to 34 characters, per ISO 13616.
        account_number:,
        # The BIC/SWIFT code of the beneficiary bank.
        bic:,
        # Country the account is held in, as an ISO 3166-1 alpha-3 code.
        country:,
        type:
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            bic: String,
            country: String,
            type: Privy::ExternalFiatAccountIbanData::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExternalFiatAccountIbanData::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IBAN =
          T.let(:iban, Privy::ExternalFiatAccountIbanData::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::ExternalFiatAccountIbanData::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
