# frozen_string_literal: true

module Privy
  module Models
    class UserWithIdentityToken < Privy::Internal::Type::BaseModel
      # @!attribute identity_token
      #
      #   @return [String, nil]
      required :identity_token, String, nil?: true

      # @!attribute user
      #   A Privy user object.
      #
      #   @return [Privy::Models::User]
      required :user, -> { Privy::User }

      # @!method initialize(identity_token:, user:)
      #   The user object along their identity token.
      #
      #   @param identity_token [String, nil]
      #
      #   @param user [Privy::Models::User] A Privy user object.
    end
  end
end
