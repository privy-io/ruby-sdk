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

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :verification_errors

      sig { params(verification_errors: T::Array[String]).void }
      attr_writer :verification_errors

      # A KYC tier with its verification status.
      sig do
        params(
          tier: String,
          verification_status: String,
          verification_errors: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(tier:, verification_status:, verification_errors: nil)
      end

      sig do
        override.returns(
          {
            tier: String,
            verification_status: String,
            verification_errors: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
