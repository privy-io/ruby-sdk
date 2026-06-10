# typed: strong

module Privy
  module Models
    class StripeKYCTier < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::StripeKYCTier, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :tier

      sig { returns(String) }
      attr_accessor :verification_status

      # A KYC tier with its verification status.
      sig do
        params(tier: String, verification_status: String).returns(
          T.attached_class
        )
      end
      def self.new(tier:, verification_status:)
      end

      sig { override.returns({ tier: String, verification_status: String }) }
      def to_hash
      end
    end
  end
end
