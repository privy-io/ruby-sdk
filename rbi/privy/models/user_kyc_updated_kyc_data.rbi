# typed: strong

module Privy
  module Models
    class UserKYCUpdatedKYCData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserKYCUpdatedKYCData, Privy::Internal::AnyHash)
        end

      # Status of KYC/KYB verification. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # KYC verification status in a KYC update event.
      sig { params(status: String).returns(T.attached_class) }
      def self.new(
        # Status of KYC/KYB verification. Passthrough from the provider.
        status:
      )
      end

      sig { override.returns({ status: String }) }
      def to_hash
      end
    end
  end
end
