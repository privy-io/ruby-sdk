# typed: strong

module Privy
  module Models
    class BridgeFiatRejectionReason < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatRejectionReason, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :reason

      # A rejection reason for a customer KYC verification.
      sig { params(reason: String).returns(T.attached_class) }
      def self.new(reason:)
      end

      sig { override.returns({ reason: String }) }
      def to_hash
      end
    end
  end
end
