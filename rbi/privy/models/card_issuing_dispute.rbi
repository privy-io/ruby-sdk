# typed: strong

module Privy
  module Models
    class CardIssuingDispute < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingDispute, Privy::Internal::AnyHash)
        end

      # Status of a dispute for card activity.
      sig { returns(Privy::CardIssuingDisputeStatus::OrSymbol) }
      attr_accessor :status

      # Dispute associated with card activity.
      sig do
        params(status: Privy::CardIssuingDisputeStatus::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Status of a dispute for card activity.
        status:
      )
      end

      sig do
        override.returns({ status: Privy::CardIssuingDisputeStatus::OrSymbol })
      end
      def to_hash
      end
    end
  end
end
