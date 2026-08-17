# typed: strong

module Privy
  module Models
    class CardIssuingConfigQueryParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingConfigQueryParams, Privy::Internal::AnyHash)
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Query parameters for reading an app's card-issuing client configuration.
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
