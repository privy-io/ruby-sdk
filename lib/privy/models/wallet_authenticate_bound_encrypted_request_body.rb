# frozen_string_literal: true

module Privy
  module Models
    class WalletAuthenticateBoundEncryptedRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute bindings
      #   Bindings that scope the USK. The key can only authorize the bound values.
      #
      #   @return [Array<Privy::Models::UserSigningKeyBinding>]
      required :bindings, -> { Privy::Internal::Type::ArrayOf[Privy::UserSigningKeyBinding] }

      # @!attribute encryption_type
      #
      #   @return [Symbol, Privy::Models::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType]
      required :encryption_type, enum: -> { Privy::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType }

      # @!attribute recipient_public_key
      #
      #   @return [String]
      required :recipient_public_key, String

      # @!attribute user_jwt
      #
      #   @return [String]
      required :user_jwt, String

      # @!method initialize(bindings:, encryption_type:, recipient_public_key:, user_jwt:)
      #   Request body for creating an encrypted, bound user signing key.
      #
      #   @param bindings [Array<Privy::Models::UserSigningKeyBinding>] Bindings that scope the USK. The key can only authorize the bound values.
      #
      #   @param encryption_type [Symbol, Privy::Models::WalletAuthenticateBoundEncryptedRequestBody::EncryptionType]
      #
      #   @param recipient_public_key [String]
      #
      #   @param user_jwt [String]

      # @see Privy::Models::WalletAuthenticateBoundEncryptedRequestBody#encryption_type
      module EncryptionType
        extend Privy::Internal::Type::Enum

        HPKE = :HPKE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
