# typed: strong

module Privy
  module Models
    class CardIssuingConfigResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingConfigResponse, Privy::Internal::AnyHash)
        end

      # Browser-safe configuration for rendering Stripe Issuing card details.
      sig { returns(Privy::CardIssuingConfig) }
      attr_reader :data

      sig { params(data: Privy::CardIssuingConfig::OrHash).void }
      attr_writer :data

      # Browser-safe card-issuing configuration for the authenticated user's app.
      sig do
        params(data: Privy::CardIssuingConfig::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Browser-safe configuration for rendering Stripe Issuing card details.
        data:
      )
      end

      sig { override.returns({ data: Privy::CardIssuingConfig }) }
      def to_hash
      end
    end
  end
end
