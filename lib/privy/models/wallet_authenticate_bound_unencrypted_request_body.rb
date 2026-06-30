# frozen_string_literal: true

module Privy
  module Models
    class WalletAuthenticateBoundUnencryptedRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute bindings
      #   Bindings that scope the USK. The key can only authorize the bound values.
      #
      #   @return [Array<Privy::Models::UserSigningKeyBinding>]
      required :bindings, -> { Privy::Internal::Type::ArrayOf[Privy::UserSigningKeyBinding] }

      # @!attribute user_jwt
      #
      #   @return [String]
      required :user_jwt, String

      # @!method initialize(bindings:, user_jwt:)
      #   Request body for creating an unencrypted, bound user signing key.
      #
      #   @param bindings [Array<Privy::Models::UserSigningKeyBinding>] Bindings that scope the USK. The key can only authorize the bound values.
      #
      #   @param user_jwt [String]
    end
  end
end
