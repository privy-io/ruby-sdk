# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAssertionResponse < Privy::Internal::Type::BaseModel
      # @!attribute authenticator_data
      #
      #   @return [String]
      required :authenticator_data, String

      # @!attribute client_data_json
      #
      #   @return [String]
      required :client_data_json, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute user_handle
      #
      #   @return [String, nil]
      optional :user_handle, String

      # @!method initialize(authenticator_data:, client_data_json:, signature:, user_handle: nil)
      #   The authenticator assertion response from a WebAuthn authentication ceremony.
      #
      #   @param authenticator_data [String]
      #   @param client_data_json [String]
      #   @param signature [String]
      #   @param user_handle [String]
    end
  end
end
