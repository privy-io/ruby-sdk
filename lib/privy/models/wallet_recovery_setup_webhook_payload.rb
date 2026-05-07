# frozen_string_literal: true

module Privy
  module Models
    class WalletRecoverySetupWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute method_
      #   The recovery method that was set up.
      #
      #   @return [Symbol, Privy::Models::WalletRecoverySetupWebhookPayload::Method]
      required :method_, enum: -> { Privy::WalletRecoverySetupWebhookPayload::Method }, api_name: :method

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletRecoverySetupWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletRecoverySetupWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute wallet_address
      #   The address of the wallet.
      #
      #   @return [String]
      required :wallet_address, String

      # @!attribute wallet_id
      #   The ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(method_:, type:, user_id:, wallet_address:, wallet_id:)
      #   Payload for the wallet.recovery_setup webhook event.
      #
      #   @param method_ [Symbol, Privy::Models::WalletRecoverySetupWebhookPayload::Method] The recovery method that was set up.
      #
      #   @param type [Symbol, Privy::Models::WalletRecoverySetupWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.
      #
      #   @param wallet_address [String] The address of the wallet.
      #
      #   @param wallet_id [String] The ID of the wallet.

      # The recovery method that was set up.
      #
      # @see Privy::Models::WalletRecoverySetupWebhookPayload#method_
      module Method
        extend Privy::Internal::Type::Enum

        USER_PASSCODE_DERIVED_RECOVERY_KEY = :user_passcode_derived_recovery_key
        PRIVY_PASSCODE_DERIVED_RECOVERY_KEY = :privy_passcode_derived_recovery_key
        PRIVY_GENERATED_RECOVERY_KEY = :privy_generated_recovery_key
        GOOGLE_DRIVE_RECOVERY_SECRET = :google_drive_recovery_secret
        ICLOUD_RECOVERY_SECRET = :icloud_recovery_secret
        RECOVERY_ENCRYPTION_KEY = :recovery_encryption_key

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of webhook event.
      #
      # @see Privy::Models::WalletRecoverySetupWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_RECOVERY_SETUP = :"wallet.recovery_setup"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
