# typed: strong

module Privy
  module Models
    class GetFiatOnrampTransactionStatusInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetFiatOnrampTransactionStatusInput,
            Privy::Internal::AnyHash
          )
        end

      # The fiat onramp provider to use.
      sig { returns(Privy::FiatOnrampProvider::OrSymbol) }
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :session_id

      # The request input for checking a fiat onramp session status.
      sig do
        params(
          provider: Privy::FiatOnrampProvider::OrSymbol,
          session_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The fiat onramp provider to use.
        provider:,
        session_id:
      )
      end

      sig do
        override.returns(
          { provider: Privy::FiatOnrampProvider::OrSymbol, session_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
