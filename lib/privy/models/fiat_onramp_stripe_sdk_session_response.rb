# frozen_string_literal: true

module Privy
  module Models
    class FiatOnrampStripeSDKSessionResponse < Privy::Internal::Type::BaseModel
      # @!attribute network
      #
      #   @return [String]
      required :network, String

      # @!attribute publishable_key
      #
      #   @return [String]
      required :publishable_key, String

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::FiatOnrampStripeSDKSessionResponse::Type]
      required :type, enum: -> { Privy::FiatOnrampStripeSDKSessionResponse::Type }

      # @!method initialize(network:, publishable_key:, session_id:, type:)
      #   Provider session initialization for embedded SDK providers (Stripe).
      #
      #   @param network [String]
      #   @param publishable_key [String]
      #   @param session_id [String]
      #   @param type [Symbol, Privy::Models::FiatOnrampStripeSDKSessionResponse::Type]

      # @see Privy::Models::FiatOnrampStripeSDKSessionResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        STRIPE_SDK = :"stripe-sdk"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
