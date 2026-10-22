# typed: strong

module Privy
  module Models
    class TravelRuleIndividualCounterparty < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TravelRuleIndividualCounterparty,
            Privy::Internal::AnyHash
          )
        end

      # Full legal name of the person.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(Privy::TravelRuleIndividualCounterparty::Type::OrSymbol) }
      attr_accessor :type

      # A postal address used in KYC and KYB data submission.
      sig { returns(T.nilable(Privy::VerificationAddress)) }
      attr_reader :address

      sig { params(address: Privy::VerificationAddress::OrHash).void }
      attr_writer :address

      # The bank-side party is a person other than the customer.
      sig do
        params(
          name: String,
          type: Privy::TravelRuleIndividualCounterparty::Type::OrSymbol,
          address: Privy::VerificationAddress::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full legal name of the person.
        name:,
        type:,
        # A postal address used in KYC and KYB data submission.
        address: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            type: Privy::TravelRuleIndividualCounterparty::Type::OrSymbol,
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
            T.all(Symbol, Privy::TravelRuleIndividualCounterparty::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            Privy::TravelRuleIndividualCounterparty::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::TravelRuleIndividualCounterparty::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
