# typed: strong

module Privy
  module Models
    class KyxVerificationStatusDetail < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KyxVerificationStatusDetail, Privy::Internal::AnyHash)
        end

      # Status of KYC/KYB verification. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # Verification link, if applicable.
      sig { returns(T.nilable(String)) }
      attr_reader :link

      sig { params(link: String).void }
      attr_writer :link

      # Reasons for rejection, if status is closed or action_required.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :rejection_reasons

      sig { params(rejection_reasons: T::Array[String]).void }
      attr_writer :rejection_reasons

      # Verification status detail for a KYC or KYB check.
      sig do
        params(
          status: String,
          link: String,
          rejection_reasons: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of KYC/KYB verification. Passthrough from the provider.
        status:,
        # Verification link, if applicable.
        link: nil,
        # Reasons for rejection, if status is closed or action_required.
        rejection_reasons: nil
      )
      end

      sig do
        override.returns(
          { status: String, link: String, rejection_reasons: T::Array[String] }
        )
      end
      def to_hash
      end
    end
  end
end
