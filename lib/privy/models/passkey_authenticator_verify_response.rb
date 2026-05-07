# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAuthenticatorVerifyResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute client_extension_results
      #   Client extension results returned by the WebAuthn authenticator.
      #
      #   @return [Privy::Models::PasskeyClientExtensionResults]
      required :client_extension_results, -> { Privy::PasskeyClientExtensionResults }

      # @!attribute raw_id
      #
      #   @return [String]
      required :raw_id, String

      # @!attribute response
      #   The authenticator assertion response from a WebAuthn authentication ceremony.
      #
      #   @return [Privy::Models::PasskeyAssertionResponse]
      required :response, -> { Privy::PasskeyAssertionResponse }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::PasskeyAuthenticatorVerifyResponse::Type]
      required :type, enum: -> { Privy::PasskeyAuthenticatorVerifyResponse::Type }

      # @!attribute authenticator_attachment
      #
      #   @return [String, nil]
      optional :authenticator_attachment, String

      # @!method initialize(id:, client_extension_results:, raw_id:, response:, type:, authenticator_attachment: nil)
      #   WebAuthn authentication response as defined by the Web Authentication
      #   specification.
      #
      #   @param id [String]
      #
      #   @param client_extension_results [Privy::Models::PasskeyClientExtensionResults] Client extension results returned by the WebAuthn authenticator.
      #
      #   @param raw_id [String]
      #
      #   @param response [Privy::Models::PasskeyAssertionResponse] The authenticator assertion response from a WebAuthn authentication ceremony.
      #
      #   @param type [Symbol, Privy::Models::PasskeyAuthenticatorVerifyResponse::Type]
      #
      #   @param authenticator_attachment [String]

      # @see Privy::Models::PasskeyAuthenticatorVerifyResponse#type
      module Type
        extend Privy::Internal::Type::Enum

        PUBLIC_KEY = :"public-key"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
