# frozen_string_literal: true

module Privy
  module Models
    class MfaEnabledWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #   A multi-factor authentication method supported by the app.
      #
      #   @return [Symbol, Privy::Models::MfaMethod]
      required :method_, enum: -> { Privy::MfaMethod }, api_name: :method

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::MfaEnabledWebhookPayload::Type]
      required :type, enum: -> { Privy::MfaEnabledWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user who enabled MFA.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(method_:, type:, user_id:)
      #   Payload for the mfa.enabled webhook event.
      #
      #   @param method_ [Symbol, Privy::Models::MfaMethod] A multi-factor authentication method supported by the app.
      #
      #   @param type [Symbol, Privy::Models::MfaEnabledWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user who enabled MFA.

      # The type of webhook event.
      #
      # @see Privy::Models::MfaEnabledWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        MFA_ENABLED = :"mfa.enabled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
