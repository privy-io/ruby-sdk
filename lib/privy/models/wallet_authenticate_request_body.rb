# frozen_string_literal: true

module Privy
  module Models
    class WalletAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute encryption_type
      #   The encryption type for the authentication response. Currently only supports
      #   HPKE.
      #
      #   @return [Symbol, Privy::Models::WalletAuthenticateRequestBody::EncryptionType]
      required :encryption_type, enum: -> { Privy::WalletAuthenticateRequestBody::EncryptionType }

      # @!attribute recipient_public_key
      #   The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose
      #   private key will be able to decrypt the session key.
      #
      #   @return [String]
      required :recipient_public_key, String

      # @!attribute user_jwt
      #   The user's JWT, to be used to authenticate the user.
      #
      #   @return [String]
      required :user_jwt, String

      # @!method initialize(encryption_type:, recipient_public_key:, user_jwt:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletAuthenticateRequestBody} for more details.
      #
      #   Request body for wallet authentication with HPKE-encrypted response.
      #
      #   @param encryption_type [Symbol, Privy::Models::WalletAuthenticateRequestBody::EncryptionType] The encryption type for the authentication response. Currently only supports HPK
      #
      #   @param recipient_public_key [String] The public key of your ECDH keypair, in base64-encoded, SPKI-format, whose priva
      #
      #   @param user_jwt [String] The user's JWT, to be used to authenticate the user.

      # The encryption type for the authentication response. Currently only supports
      # HPKE.
      #
      # @see Privy::Models::WalletAuthenticateRequestBody#encryption_type
      module EncryptionType
        extend Privy::Internal::Type::Enum

        HPKE = :HPKE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
