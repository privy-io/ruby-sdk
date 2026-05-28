# frozen_string_literal: true

module Privy
  module Models
    class GetStripeCryptoCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   Active onramp session with customer verifications.
      #
      #   @return [Privy::Models::StripeCryptoCustomerActive, Privy::Models::StripeCryptoCustomerExpired, Privy::Models::StripeCryptoCustomerNone]
      required :data, union: -> { Privy::GetStripeCryptoCustomerResponse::Data }

      # @!method initialize(data:)
      #   Stripe onramp session status and customer verification info.
      #
      #   @param data [Privy::Models::StripeCryptoCustomerActive, Privy::Models::StripeCryptoCustomerExpired, Privy::Models::StripeCryptoCustomerNone] Active onramp session with customer verifications.

      # Active onramp session with customer verifications.
      #
      # @see Privy::Models::GetStripeCryptoCustomerResponse#data
      module Data
        extend Privy::Internal::Type::Union

        discriminator :status

        # Active onramp session with customer verifications.
        variant :active, -> { Privy::StripeCryptoCustomerActive }

        # Expired onramp session. Token refresh failed, re-authentication required.
        variant :expired, -> { Privy::StripeCryptoCustomerExpired }

        # No onramp session. User must authenticate via Link.
        variant :none, -> { Privy::StripeCryptoCustomerNone }

        # @!method self.variants
        #   @return [Array(Privy::Models::StripeCryptoCustomerActive, Privy::Models::StripeCryptoCustomerExpired, Privy::Models::StripeCryptoCustomerNone)]
      end
    end
  end
end
