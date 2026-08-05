# typed: strong

module Privy
  module Models
    class CardIssuingCustomerInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCustomerInput, Privy::Internal::AnyHash)
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Input for getting or creating a cards customer.
      sig do
        params(environment: Privy::Environment::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # The Privy API environment.
        environment:
      )
      end

      sig { override.returns({ environment: Privy::Environment::OrSymbol }) }
      def to_hash
      end
    end
  end
end
