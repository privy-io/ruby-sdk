# typed: strong

module Privy
  module Models
    class RefundDetails < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::RefundDetails, Privy::Internal::AnyHash) }

      # The transaction hash of the transfer that was refunded.
      sig { returns(String) }
      attr_accessor :original_transaction_hash

      # The provider that handled the refund.
      sig { returns(Privy::RefundDetails::Provider::TaggedSymbol) }
      attr_accessor :provider

      # The Privy wallet action ID of the transfer that was refunded.
      sig { returns(String) }
      attr_accessor :wallet_action_id

      # Relay details for a refunded wallet deposit.
      sig do
        params(
          original_transaction_hash: String,
          provider: Privy::RefundDetails::Provider::OrSymbol,
          wallet_action_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The transaction hash of the transfer that was refunded.
        original_transaction_hash:,
        # The provider that handled the refund.
        provider:,
        # The Privy wallet action ID of the transfer that was refunded.
        wallet_action_id:
      )
      end

      sig do
        override.returns(
          {
            original_transaction_hash: String,
            provider: Privy::RefundDetails::Provider::TaggedSymbol,
            wallet_action_id: String
          }
        )
      end
      def to_hash
      end

      # The provider that handled the refund.
      module Provider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RefundDetails::Provider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RELAY = T.let(:relay, Privy::RefundDetails::Provider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RefundDetails::Provider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
