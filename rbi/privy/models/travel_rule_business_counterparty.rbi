# typed: strong

module Privy
  module Models
    class TravelRuleBusinessCounterparty < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TravelRuleBusinessCounterparty, Privy::Internal::AnyHash)
        end

      # An official business identifier, such as an LEI, VAT number or company
      # registration number.
      sig { returns(String) }
      attr_accessor :legal_entity_identifier

      # Legal name of the business.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(Privy::TravelRuleBusinessCounterparty::Type::OrSymbol) }
      attr_accessor :type

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :address

      sig { params(address: Privy::VerificationAddress::OrHash).void }
      attr_writer :address

      # The bank-side party is a business other than the customer.
      sig do
        params(
          legal_entity_identifier: String,
          name: String,
          type: Privy::TravelRuleBusinessCounterparty::Type::OrSymbol,
          address: Privy::VerificationAddress::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An official business identifier, such as an LEI, VAT number or company
        # registration number.
        legal_entity_identifier:,
        # Legal name of the business.
        name:,
        type:,
        # A postal address used in KYC and KYB data submission.
        address: nil
      )
      end

      sig do
        override.returns(
          {
            legal_entity_identifier: String,
            name: String,
            type: Privy::TravelRuleBusinessCounterparty::Type::OrSymbol,
            address: Privy::VerificationAddress
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TravelRuleBusinessCounterparty::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            Privy::TravelRuleBusinessCounterparty::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::TravelRuleBusinessCounterparty::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
