# typed: strong

module Privy
  module Models
    class GetFiatCustomerRequestInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetFiatCustomerRequestInput, Privy::Internal::AnyHash)
        end

      # Valid set of onramp providers
      sig { returns(Privy::OnrampProvider::OrSymbol) }
      attr_accessor :provider

      sig { returns(T.nilable(String)) }
      attr_reader :kyc_redirect_url

      sig { params(kyc_redirect_url: String).void }
      attr_writer :kyc_redirect_url

      # The request input for getting a native onramp provider customer.
      sig do
        params(
          provider: Privy::OnrampProvider::OrSymbol,
          kyc_redirect_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Valid set of onramp providers
        provider:,
        kyc_redirect_url: nil
      )
      end

      sig do
        override.returns(
          {
            provider: Privy::OnrampProvider::OrSymbol,
            kyc_redirect_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
