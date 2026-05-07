# frozen_string_literal: true

module Privy
  module Models
    class MfaDisabledWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #   The MFA method that was disabled.
      #
      #   @return [Symbol, Privy::Models::MfaDisabledWebhookPayload::Method]
      required :method_, enum: -> { Privy::MfaDisabledWebhookPayload::Method }, api_name: :method

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::MfaDisabledWebhookPayload::Type]
      required :type, enum: -> { Privy::MfaDisabledWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user who disabled MFA.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(method_:, type:, user_id:)
      #   Payload for the mfa.disabled webhook event.
      #
      #   @param method_ [Symbol, Privy::Models::MfaDisabledWebhookPayload::Method] The MFA method that was disabled.
      #
      #   @param type [Symbol, Privy::Models::MfaDisabledWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user who disabled MFA.

      # The MFA method that was disabled.
      #
      # @see Privy::Models::MfaDisabledWebhookPayload#method_
      module Method
        extend Privy::Internal::Type::Enum

        SMS = :sms
        TOTP = :totp
        PASSKEY = :passkey

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::MfaDisabledWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        MFA_DISABLED = :"mfa.disabled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
