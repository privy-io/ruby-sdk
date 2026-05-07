# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountCustomJwtInput < Privy::Internal::Type::BaseModel
      # @!attribute custom_user_id
      #
      #   @return [String]
      required :custom_user_id, String

      # @!attribute type
      #
      #   @return [Symbol, :custom_auth]
      required :type, const: :custom_auth

      # @!method initialize(custom_user_id:, type: :custom_auth)
      #   The payload for importing a Custom JWT account.
      #
      #   @param custom_user_id [String]
      #   @param type [Symbol, :custom_auth]
    end
  end
end
