# typed: strong

module Privy
  module Models
    class TravelRuleSelfCounterparty < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TravelRuleSelfCounterparty, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::TravelRuleSelfCounterparty::Type::OrSymbol) }
      attr_accessor :type

      # The bank-side party is the KYC-verified customer. Bridge uses the customer's
      # name and address on file.
      sig do
        params(type: Privy::TravelRuleSelfCounterparty::Type::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(type:)
      end

      sig do
        override.returns(
          { type: Privy::TravelRuleSelfCounterparty::Type::OrSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::TravelRuleSelfCounterparty::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SELF =
          T.let(:self, Privy::TravelRuleSelfCounterparty::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::TravelRuleSelfCounterparty::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
