# typed: strong

module Privy
  module Models
    class GetCryptoDepositAccountNextOrderResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetCryptoDepositAccountNextOrderResponse,
            Privy::Internal::AnyHash
          )
        end

      # A crypto deposit-account sweep identified by its wallet action ID. Status is the
      # wallet-action status.
      sig { returns(T.nilable(Privy::GetCryptoDepositAccountOrderResponse)) }
      attr_reader :order

      sig do
        params(
          order: T.nilable(Privy::GetCryptoDepositAccountOrderResponse::OrHash)
        ).void
      end
      attr_writer :order

      # The next crypto deposit-account sweep into the path wallet after `after`, or
      # null if none. The order object matches GET order.
      sig do
        params(
          order: T.nilable(Privy::GetCryptoDepositAccountOrderResponse::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # A crypto deposit-account sweep identified by its wallet action ID. Status is the
        # wallet-action status.
        order:
      )
      end

      sig do
        override.returns(
          { order: T.nilable(Privy::GetCryptoDepositAccountOrderResponse) }
        )
      end
      def to_hash
      end
    end
  end
end
