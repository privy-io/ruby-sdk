# frozen_string_literal: true

module Privy
  module Models
    # Provider session initialization — either a hosted URL or embedded SDK config.
    module GetFiatOnrampURLResponse
      extend Privy::Internal::Type::Union

      discriminator :type

      # Provider session initialization for popup-based providers.
      variant :url, -> { Privy::FiatOnrampURLSessionResponse }

      # Provider session initialization for embedded SDK providers (Stripe).
      variant :"stripe-sdk", -> { Privy::FiatOnrampStripeSDKSessionResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::FiatOnrampURLSessionResponse, Privy::Models::FiatOnrampStripeSDKSessionResponse)]
    end
  end
end
