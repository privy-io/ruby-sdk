# typed: strong

module Privy
  module Models
    class PayoutDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PayoutDestination, Privy::Internal::AnyHash)
        end

      # The ID of a previously registered external fiat account to pay out to.
      sig { returns(String) }
      attr_accessor :fiat_account_id

      # The destination bank account for a payout.
      sig { params(fiat_account_id: String).returns(T.attached_class) }
      def self.new(
        # The ID of a previously registered external fiat account to pay out to.
        fiat_account_id:
      )
      end

      sig { override.returns({ fiat_account_id: String }) }
      def to_hash
      end
    end
  end
end
