# typed: strong

module Privy
  module Models
    class CreateOrUpdateFiatCustomerRequestInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateOrUpdateFiatCustomerRequestInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Boolean) }
      attr_accessor :has_accepted_terms

      # Valid set of onramp providers
      sig { returns(Privy::OnrampProvider::OrSymbol) }
      attr_accessor :provider

      sig { returns(T.nilable(String)) }
      attr_reader :kyc_redirect_url

      sig { params(kyc_redirect_url: String).void }
      attr_writer :kyc_redirect_url

      # The request input for creating (or updating) a native onramp provider customer.
      sig do
        params(
          has_accepted_terms: T::Boolean,
          provider: Privy::OnrampProvider::OrSymbol,
          kyc_redirect_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        has_accepted_terms:,
        # Valid set of onramp providers
        provider:,
        kyc_redirect_url: nil
      )
      end

      sig do
        override.returns(
          {
            has_accepted_terms: T::Boolean,
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
