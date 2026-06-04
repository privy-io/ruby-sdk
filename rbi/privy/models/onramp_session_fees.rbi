# typed: strong

module Privy
  module Models
    class OnrampSessionFees < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OnrampSessionFees, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :network_fee_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :transaction_fee_amount

      # Fee breakdown for a Stripe onramp transaction.
      sig do
        params(
          network_fee_amount: T.nilable(String),
          transaction_fee_amount: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(network_fee_amount:, transaction_fee_amount:)
      end

      sig do
        override.returns(
          {
            network_fee_amount: T.nilable(String),
            transaction_fee_amount: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
